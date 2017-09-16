unit URegraCRUDCarteiraVacinacao;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioCarteiraVacinacao
  , UEntidade
  , UCarteiraVacinacao
  ;

type
  TRegraCRUDCarteiraVacinacao = class(TRegraCRUD)
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

constructor TRegraCRUDCarteiraVacinacao.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioCarteiraVacinacao.Create);
end;

procedure TRegraCRUDCarteiraVacinacao.ValidaInsercao(const coENTIDADE: TENTIDADE);
begin
  inherited;

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).COD_VACINACAO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CODIGO_VACINA_NAO_INFORAMADO);

  if (TCARTEIRA_VACINACAO(coENTIDADE).NOME) = EmptyStr then
    raise EValidacaoNegocio.Create (STR_CODIGO_VACINA_NAO_INFORAMADO);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).VACINA) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_VACINA_NAO_INFORMADA);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).DOSE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_DOSE_NAO_INFORMADA);

  //if Trim(TCARTEIRA_VACINACAO(coENTIDADE).DATA) = EmptyStr Then
    //raise EValidacaoNegocio.Create(STR_DATA_VACINA_NAO_INFORMADA);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).RESPONSAVEL) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_RESPONSAVEL_NAO_INFORMADO);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).COD_COREN) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CODIGO_COREN_NAO_INFORMADO);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).COD_LOTE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CODIGO_LOTE_NAO_INFORMADO);

  //if Trim(TCARTEIRA_VACINACAO(coENTIDADE).LOTE_VENCIMENTO) = EmptyStr Then
    //raise EValidacaoNegocio.Create(STR_LOTE_VENCIMENTO_NAO_INFORMADO);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).UNIDADE_SAUDE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_UNIDADE_SAUDE_NAO_INFORMADA);
end;

end.
