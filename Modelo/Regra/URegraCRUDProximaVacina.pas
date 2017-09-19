unit URegraCRUDProximaVacina;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioProximaVacina
  , UEntidade
  ;

type
  TRegraCRUDProximaVacina = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDCadPessoa }

constructor TRegraCRUDProximaVacina.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioProximaVacina.Create);
end;

end.
