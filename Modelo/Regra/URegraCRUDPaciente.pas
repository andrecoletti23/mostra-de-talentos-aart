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
   // procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;
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

{procedure TRegraCRUDPaciente.ValidaInsercao(const coENTIDADE: TENTIDADE);
begin
  inherited;

  if Trim(TPACIENTE(coENTIDADE).CODIGO_SUS) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CODIGO_SUS_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).NOME) = EmptyStr Then
    raise EValidacaoNegocio.Create (STR_NOME_PACIENTE_NAO_INFORMADO);

  //if (TPACIENTE(coENTIDADE).NASCIMENTO) = EmptyDateTime Then
    //raise EValidacaoNegocio.Create(STR_NASCIMENTO_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).SEXO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_SEXO_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).PAI) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_PAI_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).MAE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_MAE_NAO_INFORMADA);

  if Trim(TPACIENTE(coENTIDADE).ENDERECO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_ENDERECO_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).ESTADO_CIVIL) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_ESTADO_CIVIL_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).UF) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_UF_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).BAIRRO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_BAIRRO_NAO_INFORMADO);

  if Trim(TPACIENTE(coENTIDADE).CIDADE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NAO_INFORMADA);
end;}

end.
