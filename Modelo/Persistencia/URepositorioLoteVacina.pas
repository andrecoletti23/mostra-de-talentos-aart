unit URepositorioLoteVacina;

interface

uses
    ULoteVacina
  , UEntidade
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioLoteVacina = class(TRepositorioDB<TLOTEVACINA>)
  private

  public
    constructor Create;
    //destructor Destroy; override;

    procedure AtribuiDBParaEntidade(const coLOTEVACINA: TLOTEVACINA); override;
    procedure AtribuiEntidadeParaDB(const coLOTEVACINA: TLOTEVACINA;
                                    const coSQLQuery: TSQLQuery); override;
  end;


implementation

uses
    UDM
  , SysUtils
  , StrUtils
  ;

{ TRepositorioCoren }
constructor TRepositorioLOTEVACINA.Create;
begin
  inherited Create(TLOTEVACINA, TBL_LOTE_VACINA, FLD_ENTIDADE_ID, STR_LOTE_VACINA);
end;

procedure TRepositorioLoteVacina.AtribuiDBParaEntidade(const coLOTEVACINA: TLOTEVACINA);
begin
  inherited;
  with dmProway.SQLSelect do
    begin
      coLOTEVACINA.CODIGO            := FieldByName(FLD_CODIGO).AsInteger ;
      coLOTEVACINA.VACINA_NOME       := FieldByName(FLD_VACINA_NOME ).AsString ;
      coLOTEVACINA.LOTE_VACINA       := FieldByName(FLD_LOTE_VACINA).AsString;
      coLOTEVACINA.LABORATORIO       := FieldByName(FLD_LABORATORIO ).AsString;
      coLOTEVACINA.VENCIMENTO_LOTE   := FieldByName(FLD_VENCIMENTO_LOTE).AsString;
    end;
end;

procedure TRepositorioLoteVacina.AtribuiEntidadeParaDB(const coLOTEVACINA: TLOTEVACINA;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
    begin
      ParamByName(FLD_CODIGO).AsInteger          := coLOTEVACINA.CODIGO;
      ParamByName(FLD_VACINA_NOME).AsString      := coLOTEVACINA.VACINA_NOME;
      ParamByName(FLD_LOTE_VACINA).AsString      := coLOTEVACINA.LOTE_VACINA ;
      ParamByName(FLD_LABORATORIO).AsString      := coLOTEVACINA.LABORATORIO ;
      ParamByName(FLD_VENCIMENTO_LOTE).AsString  := coLOTEVACINA.VENCIMENTO_LOTE;
    end;
  end;
end.
