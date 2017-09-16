unit URegraCRUDAgente;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioAgente
  , UEntidade
  , UAgente
  ;

type
  TRegraCRUDAgente = class(TRegraCRUD)
  protected
    procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;
  public
    function ValidarEMail(aStr: string): Boolean;
    constructor Create; override;
  end;

implementation

{ TRegraCRUDCadPessoa }
uses
    SysUtils
  , UUtilitarios
  , UMensagens
  , UConstantes
  ;

constructor TRegraCRUDAgente.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioAgente.Create);
end;

procedure TRegraCRUDAgente.ValidaInsercao(const coENTIDADE: TENTIDADE);
begin
  inherited;
  //if ValidarEmail (TAGENTE(coENTIDADE).AGENTE_EMAIL = false Then
    //raise EvalidacaoNegocio.Create('Error Message');

  if Trim(TAGENTE(coENTIDADE).AGENTE_NOME) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_NOME_AGENTE_NAO_INFORMADO);

  if (TAGENTE(coENTIDADE).LOGIN) = EmptyStr then
    raise EValidacaoNegocio.Create (STR_LOGIN_NAO_INFORMADO);

  if Trim(TAGENTE(coENTIDADE).SENHA) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_SENHA_NAO_INFORMADA);

  if Trim(TAGENTE(coENTIDADE).AGENTE_COREN) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_COREN_NAO_INFORMADO);

  if Trim(TAGENTE(coENTIDADE).AGENTE_ESPECIFICACAO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_ESPECIFICACAO_NAO_INFORMADA);

  //if Trim(TAGENTE(coENTIDADE).AGENTE_DATA_NASC) = EmptyStr Then
    //raise EValidacaoNegocio.Create(STR_DATA_NAO_INFORMADA);

  if Trim(TAGENTE(coENTIDADE).AGENTE_TURNO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_TURNO_NAO_INFORMADO);

  if Trim(TAGENTE(coENTIDADE).AGENTE_TELEFONE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_TELEFONE_NAO_INFORMADO);
end;

function TRegraCRUDAgente.ValidarEMail(aStr: string): Boolean;
begin
 aStr := Trim(UpperCase(aStr));
 if Pos('@', aStr) > 1 then
 begin
   Delete(aStr, 1, pos('@', aStr));
   Result := (Length(aStr) > 0) and (Pos('.', aStr) > 2);
 end
 else
   Result := False;
end;

end.
