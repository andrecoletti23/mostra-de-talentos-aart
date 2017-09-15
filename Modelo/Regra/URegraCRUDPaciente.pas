unit URegraCRUDPaciente;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioPaciente
  , UEntidade
  , UPaciente
  ;

type
  TRegraCRUDPaciente = class(TRegraCRUD)
  protected
    procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDCidade }

uses
    SysUtils
  , UUtilitarios
  , UMensagens
  , UConstantes
  ;

constructor TRegraCRUDPaciente.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioPaciente.Create);
end;

procedure TRegraCRUDPaciente.ValidaInsercao(const coENTIDADE: TENTIDADE);
begin
  inherited;

  if Trim(TPACIENTE(coENTIDADE).CODIGO_SUS) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if (TPACIENTE(coENTIDADE).NOME) = EmptyStr then
    raise EValidacaoNegocio.Create (STR_CIDADE_POPULACAO_INVALIDA);

  if Trim(TPACIENTE(coENTIDADE).NASCIMENTO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).SEXO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).PAI) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).MAE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).ENDERECO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).ESTADO_CIVIL) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).UF) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).BAIRRO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).CIDADE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);
end;

end.
