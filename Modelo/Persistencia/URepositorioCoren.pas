unit URepositorioCoren;

interface

uses
    UCoren
  , UEntidade
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioCoren = class(TRepositorioDB<TCoren>)
  private

  public
    constructor Create;
    //destructor Destroy; override;

    procedure AtribuiDBParaEntidade(const coCOREN: TCoren); override;
    procedure AtribuiEntidadeParaDB(const coCOREN: TCoren;
                                    const coSQLQuery: TSQLQuery); override;
  end;


implementation

uses
    UDM
  , SysUtils
  , StrUtils
  ;

{ TRepositorioCoren }
constructor TRepositorioCoren.Create;
begin
  inherited Create(TCoren, TBL_Coren, FLD_ENTIDADE_ID, STR_Coren);
end;

procedure TRepositorioCoren.AtribuiDBParaEntidade(const coCoren: TCoren);
begin
  inherited;
  with FSQLSelect do
    begin
     {coAGENTE.                    := FieldByName(FLD_AGENTE_NOME).AsString ;
      coAGENTE.NOME                := FieldByName(FLD_NOME).AsString ;
      coAGENTE.ESPECIFICACAO       := FieldByName(FLD_ESPECIFICACAO).AsString;
      coAGENTE.DATA_NASC           := FieldByName(FLD_DATA_NASC).AsDateTime; }
    end;
end;

procedure TRepositorioCOREN.AtribuiEntidadeParaDB(const coCOREN: TCOREN;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
    begin
      ParamByName(FLD_COREN).AsString            := coCOREN.COREN;
      ParamByName(FLD_NOME).AsString             := coCOREN.NOME;
      ParamByName(FLD_ESPECIFICACAO).AsString    := coCOREN.ESPECIFICACAO ;
      ParamByName(FLD_DATA_NASC).AsDate          := coCOREN.DATA_NASC ;
    end;
  end;



end.
