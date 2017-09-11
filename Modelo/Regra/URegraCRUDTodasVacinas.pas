unit URegraCRUDTodasVacinas;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioTodasVacinas
  , UEntidade
  ;

type
  TRegraCRUDTodasVacinas = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDCadPessoa }

constructor TRegraCRUDTodasVacinas.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioTodasVacinas.Create);
end;

end.
