unit URepositorioCoren;

interface

uses
    UCoren
  , UEntidade
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioCoren = class(TRepositorioDB<TCOREN>)
  private

  public
    constructor Create;
    //destructor Destroy; override;

    procedure AtribuiDBParaEntidade(const coCOREN: TCOREN); override;
    procedure AtribuiEntidadeParaDB(const coCOREN: TCOREN;
                                    const coSQLQuery: TSQLQuery); override;
  end;


implementation

uses
    UDM
  , SysUtils
  , StrUtils
  ;

{ TRepositorioCoren }
constructor TRepositorioCOREN.Create;
begin
  inherited Create(TCOREN, TBL_COREN, FLD_ENTIDADE_ID, STR_COREN);
end;

procedure TRepositorioCOREN.AtribuiDBParaEntidade(const coCOREN: TCOREN);
begin
  inherited;
  with dmProway.SQLSelect do
    begin
      coCOREN.COREN               := FieldByName(FLD_COREN).AsString ;
      coCOREN.NOME                := FieldByName(FLD_NOME).AsString ;
      coCOREN.ESPECIFICACAO       := FieldByName(FLD_ESPECIFICACAO).AsString;
      coCOREN.DATA_NASC           := FieldByName(FLD_DATA_NASC).AsDateTime;
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
