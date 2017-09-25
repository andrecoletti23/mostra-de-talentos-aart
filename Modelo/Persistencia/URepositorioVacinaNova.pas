unit URepositorioVacinaNova;

interface

uses
    UVacinaNova
  , UEntidade
  , UPaciente
  , URepositorioPaciente
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioVacinaNova = class(TRepositorioDB<TVACINANOVA>)
  private
    FRepositorioPaciente: TRepositorioPaciente;
  public
    constructor Create;
    //destructor Destroy; override;

    procedure AtribuiDBParaEntidade(const coVACINANOVA: TVACINANOVA); override;
    procedure AtribuiEntidadeParaDB(const coVACINANOVA: TVACINANOVA;
                                    const coSQLQuery: TSQLQuery); override;
  end;


implementation

uses
    UDM
  , SysUtils
  , StrUtils;

{ TRepositorioVacinaNova }
constructor TRepositorioVACINANOVA.Create;
begin
  inherited Create(TVACINANOVA, TBL_VACINA_NOVA, FLD_ENTIDADE_ID, STR_VACINA_NOVA);
  FRepositorioPaciente.Create;
end;

procedure TRepositorioVACINANOVA.AtribuiDBParaEntidade(const coVACINANOVA: TVACINANOVA);
begin
  inherited;
  with FSQLSelect do
    begin
      //coVACINANOVA.COD_SUS           :=  TPACIENTE(
     //FRepositorioPaciente.Retorna(FieldByName(FLD_CODIGO_SUS).AsInteger));
      coVACINANOVA.IDADE             := FieldByName(FLD_IDADE).AsString ;
      coVACINANOVA.DOSE              := FieldByName(FLD_DOSE).AsString;
      coVACINANOVA.VACINA            := FieldByName(FLD_VACINA).AsString;
     // coVACINANOVA.APLICADA          := FieldByName(FLD_APLICADA).AsString;
      //coVACINANOVA.DATA_APLICAÇÃO    := FieldByName(FLD_DATA_APLICACAO).AsDateTime;
    end;
end;

procedure TRepositorioVACINANOVA.AtribuiEntidadeParaDB(const coVACINANOVA: TVACINANOVA;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
    begin
      //ParamByName(FLD_CODIGO_SUS).AsString        := coVACINANOVA.COD_SUS;
      ParamByName(FLD_IDADE).AsString             := coVACINANOVA.IDADE  ;
      ParamByName(FLD_DOSE).AsString              := coVACINANOVA.DOSE ;
      ParamByName(FLD_VACINA).AsString            := coVACINANOVA.VACINA;
      //ParamByName(FLD_APLICADA).AsString          := coVACINANOVA.APLICADA  ;
      //ParamByName(FLD_DATA_APLICACAO).AsDateTime  := coVACINANOVA.DATA_APLICAÇÃO;
    end;
  end;
end.
