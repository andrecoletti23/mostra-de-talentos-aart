unit URegraCRUDLoteVacina;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioLoteVacina
  , UEntidade
  , ULoteVacina
  ;

type
  TRegraCRUDLoteVacina = class(TRegraCRUD)
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

constructor TRegraCRUDLoteVacina.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioLoteVacina.Create);
end;

procedure TRegraCRUDLoteVacina.ValidaInsercao(const coENTIDADE: TENTIDADE);
begin
  inherited;

  if Trim(TLOTEVACINA(coENTIDADE).VACINA_NOME) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if (TLOTEVACINA(coENTIDADE).LOTE) = EmptyStr then
    raise EValidacaoNegocio.Create (STR_CIDADE_POPULACAO_INVALIDA);

  if Trim(TLOTEVACINA(coENTIDADE).LABORATORIO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

  if Trim(TLOTEVACINA(coENTIDADE).VENCIMENTO_LOTE) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CIDADE_NOME_NAO_INFORMADO);

end;

end.
