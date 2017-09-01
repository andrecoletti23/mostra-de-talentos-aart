unit URepositorioCarteiraVacinacao;

interface

uses
    UCarteiraVacinacao
  , UEntidade
  , UCoren
  , URepositorioCoren
  , URepositorioLoteVacina
  , ULoteVacina
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioCarteiraVacinacao = class(TRepositorioDB<TCARTEIRA_VACINACAO>)
  private
    FRepositorioCoren: TRepositorioCoren;
    FRepositorioLoteVacina: TRepositorioLoteVacina;

  public
    constructor Create;
    destructor Destroy; override;

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

constructor TRepositorioCarteiraVacinacao.Create;
begin
 inherited
   Create(TCARTEIRA_VACINACAO, TBL_CARTEIRA_VACINACAO, FLD_ENTIDADE_ID, STR_CARTEIRA_VACINACAO);
   FRepositorioCoren := TRepositorioCoren.Create;
 end;

destructor TRepositorioCarteiraVacinacao.Destroy;
begin
  FreeAndNil(FRepositorioCoren) ;
  FreeAndNil(FRepositorioLoteVacina);
  inherited;
end;

procedure TRepositorioCarteiraVacinacao.AtribuiDBParaEntidade(
  const coCARTEIRA_VACINACAO: TCARTEIRA_VACINACAO);
begin
  inherited;
  with dmProway.SQLSelect do
    begin
        coCARTEIRA_VACINACAO.COD_VACINACAO      := FieldByName(FLD_CAR_COD_VACINACAO).AsString ;
        coCARTEIRA_VACINACAO.NOME               := FieldByName(FLD_CAR_NOME).AsString ;
        coCARTEIRA_VACINACAO.VACINA             := FieldByName(FLD_CAR_VACINA).AsString ;
        coCARTEIRA_VACINACAO.DOSE               := FieldByName(FLD_CAR_DOSE).AsInteger ;
        coCARTEIRA_VACINACAO.DATA               := FieldByName(FLD_CAR_DATA).AsString ;
        coCARTEIRA_VACINACAO.RESPONSAVEL        := FieldByName(FLD_CAR_RESPONSAVEL).AsString  ;
        coCARTEIRA_VACINACAO.COD_COREN          := FieldByName(FLD_CAR_COD_COREN).AsString   ;
        //TCOREN(FRepositorioCoren.(FieldByName(FLD_COREN).AsString)) ;
        coCARTEIRA_VACINACAO.COD_LOTE           := FieldByName(FLD_CAR_COD_LOTE).AsString;
        //TLOTEVACINA(FRepositorioLoteVacina.Retorna(FieldByName(FLD_CAR_COD_LOTE).AsInteger)) ;
        coCARTEIRA_VACINACAO.LOTE_VENCIMENTO    := FieldByName(FLD_CAR_LOTE_VENCIMENTO).AsString;
        //TLOTEVACINA(FRepositorioLoteVacina.Retorna(FieldByName(FLD_CAR_LOTE_VENCIMENTO).AsInteger)) ;
    end;
end;

procedure TRepositorioCarteiraVacinacao.AtribuiEntidadeParaDB(
  const coCARTEIRA_VACINACAO: TCARTEIRA_VACINACAO; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
    begin
      ParamByName(FLD_CAR_COD_VACINACAO).AsString 	:= coCARTEIRA_VACINACAO.COD_VACINACAO ;
      ParamByName(FLD_CAR_NOME).AsString 			      := coCARTEIRA_VACINACAO.NOME ;
      ParamByName(FLD_CAR_VACINA).AsString 			    := coCARTEIRA_VACINACAO.VACINA ;
      ParamByName(FLD_CAR_DOSE).AsInteger 		      := coCARTEIRA_VACINACAO.DOSE ;
      ParamByName(FLD_CAR_DATA).AsString 			      := coCARTEIRA_VACINACAO.DATA ;
      ParamByName(FLD_CAR_RESPONSAVEL).AsString 	  := coCARTEIRA_VACINACAO.RESPONSAVEL ;
      ParamByName(FLD_CAR_COD_COREN).AsString	 	    := coCARTEIRA_VACINACAO.COD_COREN ;
      ParamByName(FLD_CAR_COD_LOTE).AsString        := coCARTEIRA_VACINACAO.COD_LOTE ;
      ParamByName(FLD_CAR_LOTE_VENCIMENTO).AsString := coCARTEIRA_VACINACAO.LOTE_VENCIMENTO;
    end;
end;

end.
