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

  if Trim(TAGENTE(coENTIDADE).AGENTE_NOME) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if (TAGENTE(coENTIDADE).LOGIN) = EmptyStr then
    raise EValidacaoNegocio.Create (STR_CIDADE_POPULACAO_INVALIDA);

  if Trim(TAGENTE(coENTIDADE).SENHA) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TAGENTE(coENTIDADE).AGENTE_COREN) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TAGENTE(coENTIDADE).AGENTE_ESPECIFICACAO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TAGENTE(coENTIDADE).AGENTE_DATA_NASC) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TAGENTE(coENTIDADE).AGENTE_TURNO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TAGENTE(coENTIDADE).AGENTE_TELEFONE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);
end;

end.
