unit URegraCRUDPaciente;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioPaciente
  , UEntidade
  ;

type
  TRegraCRUDPACIENTES = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDCadPessoa }

constructor TRegraCRUDPACIENTES.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioPACIENTE.Create);
end;

end.
