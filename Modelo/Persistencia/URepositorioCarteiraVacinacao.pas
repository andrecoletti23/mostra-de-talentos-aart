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
  , UPaciente
  , URepositorioPaciente
  ;

type
  TRepositorioCarteiraVacinacao = class(TRepositorioDB<TCARTEIRA_VACINACAO>)
  private
    FRepositorioCoren: TRepositorioCoren;
    FRepositorioLoteVacina: TRepositorioLoteVacina;
    FRepositorioPaciente : TRepositorioPaciente;

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
   FRepositorioPaciente := TRepositorioPaciente.Create;
 end;

destructor TRepositorioCarteiraVacinacao.Destroy;
begin
  FreeAndNil(FRepositorioPaciente) ;
  inherited;
end;

procedure TRepositorioCarteiraVacinacao.AtribuiDBParaEntidade(
  const coCARTEIRA_VACINACAO: TCARTEIRA_VACINACAO);
begin
  inherited;
  with FSQLSelect do
    begin
        coCARTEIRA_VACINACAO.COD_VACINACAO      := FRepositorioPaciente.Retorna
                                (FieldByName(FLD_CAR_COD_VACINACAO).AsInteger) ;
        coCARTEIRA_VACINACAO.NOME               := FieldByName(FLD_CAR_NOME).AsString ;
        coCARTEIRA_VACINACAO.VACINA             := FieldByName(FLD_CAR_VACINA).AsString ;
        coCARTEIRA_VACINACAO.DOSE               := FieldByName(FLD_CAR_DOSE).AsString ;
        coCARTEIRA_VACINACAO.DATA               := FieldByName(FLD_CAR_DATA).AsDateTime ;
        coCARTEIRA_VACINACAO.RESPONSAVEL        := FieldByName(FLD_CAR_RESPONSAVEL).AsString  ;
        coCARTEIRA_VACINACAO.COD_COREN          := FieldByName(FLD_CAR_COD_COREN).AsString   ;
        //TCOREN(FRepositorioCoren.Retorna(FieldByName(FLD_COREN).AsInteger));
        coCARTEIRA_VACINACAO.COD_LOTE           := FieldByName(FLD_CAR_COD_LOTE).AsString;
        //TLOTEVACINA(FRepositorioLoteVacina.Retorna(FieldByName(FLD_CAR_COD_LOTE).AsInteger)) ;
        coCARTEIRA_VACINACAO.LOTE_VENCIMENTO    := FieldByName(FLD_CAR_LOTE_VENCIMENTO).AsDateTime;
        //TLOTEVACINA(FRepositorioLoteVacina.Retorna(FieldByName(FLD_CAR_LOTE_VENCIMENTO).AsInteger)) ;
        coCARTEIRA_VACINACAO.UNIDADE_SAUDE      := FieldByName(FLD_UNIDADE_SAUDE).AsString;
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
      ParamByName(FLD_CAR_DOSE).AsString  		      := coCARTEIRA_VACINACAO.DOSE ;
      ParamByName(FLD_CAR_DATA).AsDate  			      := coCARTEIRA_VACINACAO.DATA ;
      ParamByName(FLD_CAR_RESPONSAVEL).AsString 	  := coCARTEIRA_VACINACAO.RESPONSAVEL ;
      ParamByName(FLD_CAR_COD_COREN).AsString	 	    := coCARTEIRA_VACINACAO.COD_COREN ;
      ParamByName(FLD_CAR_COD_LOTE).AsString        := coCARTEIRA_VACINACAO.COD_LOTE ;
      ParamByName(FLD_CAR_LOTE_VENCIMENTO).AsDate   := coCARTEIRA_VACINACAO.LOTE_VENCIMENTO;
      ParamByName(FLD_UNIDADE_SAUDE).AsString       := coCARTEIRA_VACINACAO.UNIDADE_SAUDE;
    end;
end;

end.
