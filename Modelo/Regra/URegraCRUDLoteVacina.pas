unit URegraCRUDLoteVacina;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioLoteVacina
  , UEntidade
  ;

type
  TRegraCRUDLoteVacina = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDCadPessoa }

constructor TRegraCRUDLoteVacina.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioLoteVacina.Create);
end;

end.
