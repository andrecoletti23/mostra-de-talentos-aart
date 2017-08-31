unit URepositorioAgente;

interface

uses
    UAgente
  , UEntidade
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioAgente = class(TRepositorioDB<TAGENTE>)
  private

  public
    constructor Create;
    destructor Destroy; override;

    procedure AtribuiDBParaEntidade(const coAGENTE: TAGENTE); override;
    procedure AtribuiEntidadeParaDB(const coAGENTE: TAGENTE;
                                    const coSQLQuery: TSQLQuery); override;
  end;


implementation

uses
    UDM
  , SysUtils
  , StrUtils
  ;

{ TRepositorioCadPessoa }



constructor TRepositorioAGENTE.Create;
begin
  Inherited Create(TAGENTE, TBL_AGENTE, FLD_ENTIDADE_ID, STR_AGENTE);
end;

destructor TRepositorioAgente.Destroy;
begin

  inherited;
end;

procedure TRepositorioAgente.AtribuiDBParaEntidade(
  const coAGENTE: TAGENTE);
begin
  inherited;
    with dmProway.SQLSelect do
    begin
      coAGENTE.AGENTE_NOME    := FieldByName(FDL_AGENTE_NOME).AsString;
      coAGENTE.AGENTE_LOGIN   := FieldByName(FDL_AGENTE_LOGIN).AsString;
      coAGENTE.AGENTE_SENHA   := FieldByName(FDL_AGENTE_SENHA).AsString;
      coAGENTE.AGENTE_EMAIL   := FieldByName(FDL_AGENTE_EMAIL).AsString;
  end;
end;

procedure TRepositorioAgente.AtribuiEntidadeParaDB(
  const coAGENTE: TAGENTE; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
    {ParamByName(FDL_AGENTE_ID).AsInteger    := coAGENTE.AGENTE_ID ;
    ParamByName(FDL_AGENTE_NOME).AsString   := coAGENTE.AGENTE_NOME;
    ParamByName(FDL_AGENTE_LOGIN).AsString  := coAGENTE.AGENTE_LOGIN ;
    ParamByName(FDL_AGENTE_SENHA).AsString  := coAGENTE.AGENTE_SENHA;
    ParamByName(FDL_AGENTE_EMAIL).AsString  := coAGENTE.AGENTE_EMAIL ;}
end;

end.
