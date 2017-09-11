unit URegraCRUDAgente;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioAgente
  , UEntidade
  ;

type
  TRegraCRUDAgente = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDCadPessoa }

constructor TRegraCRUDAgente.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioAgente.Create);
end;

end.
