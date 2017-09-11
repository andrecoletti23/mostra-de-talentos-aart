unit URepositorioTodasVacinas;

interface

uses
    UTodasVacinas
  , UEntidade
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioTodasVacinas = class(TRepositorioDB<TTODASVACINAS>)
  private

  public
    constructor Create;
    //destructor Destroy; override;

    procedure AtribuiDBParaEntidade(const coTODASVACINAS: TTODASVACINAS); override;
    procedure AtribuiEntidadeParaDB(const coTODASVACINAS: TTODASVACINAS;
                                    const coSQLQuery: TSQLQuery); override;
  end;


implementation

uses
    UDM
  , SysUtils
  , StrUtils
  ;

{ TRepositorioCoren }
constructor TRepositorioTODASVACINAS.Create;
begin
  inherited Create(TTODASVACINAS, TBL_TODAS_VACINAS, FLD_ENTIDADE_ID, STR_TODAS_VACINAS);
end;

procedure TRepositorioTODASVACINAS.AtribuiDBParaEntidade(const coTODASVACINAS: TTODASVACINAS);
begin
  inherited;
  with FSQLSelect do
    begin
      coTODASVACINAS.NOME_VACINA        := FieldByName(FLD_NOME_VACINA ).AsString ;
      coTODASVACINAS.DESCRICAO          := FieldByName(FLD_DESCRICAO ).AsString ;
      coTODASVACINAS.IDADE_INDICADA     := FieldByName(FLD_IDADE_INDICADA).AsString;
      coTODASVACINAS.TOTAL_DOSES        := FieldByName(FLD_TOTAL_DOSES).AsString;
      coTODASVACINAS.RESTRICAO          := FieldByName(FLD_RESTRICAO).AsString;
    end;
end;

procedure TRepositorioTODASVACINAS.AtribuiEntidadeParaDB(const coTODASVACINAS: TTODASVACINAS;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
    begin
      ParamByName(FLD_NOME_VACINA).AsString      := coTODASVACINAS.NOME_VACINA;
      ParamByName(FLD_DESCRICAO).AsString        := coTODASVACINAS.DESCRICAO  ;
      ParamByName(FLD_IDADE_INDICADA).AsString     := coTODASVACINAS.IDADE_INDICADA ;
      ParamByName(FLD_TOTAL_DOSES).AsString      := coTODASVACINAS.TOTAL_DOSES  ;
      ParamByName(FLD_RESTRICAO).AsString        := coTODASVACINAS.RESTRICAO;
    end;
  end;
end.
