unit URepositorioCarteiraVacinacao;

interface

uses
    UCarteiraVacinacao
  , UEntidade
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioCarteiraVacinacao = class(TRepositorioDB<TCARTEIRA_VACINACAO>)
  private

  public
    constructor Create;
    //destructor Destroy; override;

    procedure AtribuiDBParaEntidade(const coCARTEIRA_VACINACAO: TCARTEIRA_VACINACAO); override;
    procedure AtribuiEntidadeParaDB(const coCARTEIRA_VACINACAO: TCARTEIRA_VACINACAO;
                                    const coSQLQuery: TSQLQuery); override;
  end;


implementation

uses
    UDM
  , SysUtils
  , StrUtils
  ;

{ TRepositorioCarteiraVacinacao }

procedure TRepositorioCarteiraVacinacao.AtribuiDBParaEntidade(
  const coCARTEIRA_VACINACAO: TCARTEIRA_VACINACAO);
begin
  inherited;
  with dmProway.SQLSelect do
end;

procedure TRepositorioCarteiraVacinacao.AtribuiEntidadeParaDB(
  const coCARTEIRA_VACINACAO: TCARTEIRA_VACINACAO; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
end;

constructor TRepositorioCarteiraVacinacao.Create;
begin

end;

end.
