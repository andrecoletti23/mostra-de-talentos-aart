unit URegraCRUDCarteiraVacinacao;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioCarteiraVacinacao
  , UEntidade
  ;

type
  TRegraCRUDCarteiraVacinacao = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDCadPessoa }

constructor TRegraCRUDCarteiraVacinacao.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioCarteiraVacinacao.Create);
end;

end.
