unit URegraCRUDAgente;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioCadAgente
  , UEntidade
  ;

type
  TRegraCRUDCadAgente = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDCadPessoa }

constructor TRegraCRUDCadAgente.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioCadAgente.Create);
end;

end.
