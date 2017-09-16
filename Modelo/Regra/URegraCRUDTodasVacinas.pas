unit URegraCRUDTodasVacinas;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioTodasVacinas
  , UEntidade
  , UTodasVacinas
  ;

type
  TRegraCRUDTodasVacinas = class(TRegraCRUD)
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

constructor TRegraCRUDTodasVacinas.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioTodasVacinas.Create);
end;

procedure TRegraCRUDTodasVacinas.ValidaInsercao(const coENTIDADE: TENTIDADE);
begin
  inherited;

  if Trim(TTODASVACINAS(coENTIDADE).NOME_VACINA) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_VACINA_NAO_INFORMADA);

  if (TTODASVACINAS(coENTIDADE).DESCRICAO) = EmptyStr then
    raise EValidacaoNegocio.Create (STR_DESCRICAO_VACINA_NAO_INFORMADA);

end;

end.
