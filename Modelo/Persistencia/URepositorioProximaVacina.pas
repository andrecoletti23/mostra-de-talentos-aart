unit URepositorioProximaVacina;

interface

uses
    UProximaVacina
  , URepositorioPaciente
  , UPAciente
  , UEntidade
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioProximaVacina = class(TRepositorioDB<TPROXIMAVACINA>)
  private
   FRepositorioPaciente: TRepositorioPaciente;
  public
    constructor Create;
    //destructor Destroy; override;

    procedure AtribuiDBParaEntidade(const coPROXIMAVACINA: TPROXIMAVACINA); override;
    procedure AtribuiEntidadeParaDB(const coPROXIMAVACINA: TPROXIMAVACINA;
                                    const coSQLQuery: TSQLQuery); override;
  end;


implementation

uses
    UDM
  , SysUtils
  , StrUtils
  ;

{ TRepositorioProximaVacina }
constructor TRepositorioPROXIMAVACINA.Create;
begin
  inherited Create(TPROXIMAVACINA, TBL_PROX_VACINA, FLD_ENTIDADE_ID, STR_PROX_VACINA);
end;

procedure TRepositorioPROXIMAVACINA.AtribuiDBParaEntidade(const coPROXIMAVACINA: TPROXIMAVACINA);
begin
  inherited;
  with FSQLSelect do
    begin
      coPROXIMAVACINA.SUS_CODIGO         := FieldByName(FLD_SUS_CODIGO).AsString;
      //TPACIENTE( FRepositorioPaciente.Retorna(FieldByName(FLD_ID).AsInteger));
      coPROXIMAVACINA.NOME               := FieldByName(FLD_NOME).AsString;
      coPROXIMAVACINA.DATA_RETORNO       := FieldByName(FLD_DATA_RETORNO).AsDateTime;
      coPROXIMAVACINA.VACINA_RETORNO     := FieldByName(FLD_VACINA_RETORNO).AsString;
    end;
end;

procedure TRepositorioPROXIMAVACINA.AtribuiEntidadeParaDB(const coPROXIMAVACINA: TPROXIMAVACINA;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
    begin
      //ParamByName(FLD_SUS_CODIGO).AsString          := coPROXIMAVACINA.SUS_CODIGO;
      ParamByName(FLD_NOME).AsString                := coPROXIMAVACINA.NOME  ;
      ParamByName(FLD_DATA_RETORNO).AsDate          := coPROXIMAVACINA.DATA_RETORNO ;
      ParamByName(FLD_VACINA_RETORNO).AsString      := coPROXIMAVACINA.VACINA_RETORNO;
    end;
  end;
end.
