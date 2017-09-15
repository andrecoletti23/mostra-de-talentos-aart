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
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if (TCARTEIRA_VACINACAO(coENTIDADE).NOME) = EmptyStr then
    raise EValidacaoNegocio.Create (STR_CIDADE_POPULACAO_INVALIDA);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).VACINA) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).DOSE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).DATA) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).RESPONSAVEL) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).COD_COREN) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).COD_LOTE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).LOTE_VENCIMENTO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TCARTEIRA_VACINACAO(coENTIDADE).UNIDADE_SAUDE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);
end;

end.
