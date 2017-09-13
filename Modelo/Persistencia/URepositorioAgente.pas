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
    //destructor Destroy; override;

    procedure AtribuiDBParaEntidade(const coAGENTE: TAGENTE); override;
    procedure AtribuiEntidadeParaDB(const coAGENTE: TAGENTE;
                                    const coSQLQuery: TSQLQuery); override;

    function RetornaPeloLogin(const csAgente_Login: String): TAGENTE;

  end;


implementation

uses
    UDM
  , SysUtils
  , StrUtils
  ;

const
  CNT_SELECT_PELO_LOGIN = 'select * from AGENTE where Agente_login = :login';

{ TRepositorioAgente }
constructor TRepositorioAGENTE.Create;
begin
  inherited Create(TAGENTE, TBL_AGENTE, FLD_ENTIDADE_ID, STR_AGENTE);
end;

function TRepositorioAgente.RetornaPeloLogin(const csAgente_Login: String): TAGENTE;
begin
  FSQLSelect.Close;
  FSQLSelect.CommandText := CNT_SELECT_PELO_LOGIN;
  FSQLSelect.Prepared    := True;
  FSQLSelect.ParamByName(FLD_AGENTE_LOGIN).AsString := csAgente_Login;
  FSQLSelect.Open;

  Result := nil;
  if not FSQLSelect.Eof then
    begin
      Result := TAGENTE.Create;
      AtribuiDBParaEntidade(Result);
    end;
end;


procedure TRepositorioAGENTE.AtribuiDBParaEntidade(const coAGENTE: TAGENTE);
begin
  inherited;
  with FSQLSelect do
    begin
      coAGENTE.AGENTE_NOME            := FieldByName(FLD_AGENTE_NOME).AsString ;
      coAGENTE.AGENTE_LOGIN           := FieldByName(FLD_AGENTE_LOGIN).AsString ;
      coAGENTE.AGENTE_SENHA           := FieldByName(FLD_AGENTE_SENHA).AsString;
      coAGENTE.AGENTE_EMAIL           := FieldByName(FLD_AGENTE_EMAIL).AsString ;
      coAGENTE.AGENTE_COREN           := FieldByName(FLD_AGENTE_COREN).AsString ;
      coAGENTE.AGENTE_ESPECIFICACAO   := FieldByName(FLD_AGENTE_ESPECIFICACAO).AsString ;
      coAGENTE.AGENTE_DATA_NASC       := FieldByName(FLD_AGENTE_DATA_NASC).AsDateTime;
      coAGENTE.AGENTE_TURNO           := FieldByName(FLD_AGENTE_TURNO).AsString ;
      coAGENTE.AGENTE_TELEFONE        := FieldByName(FLD_AGENTE_TELEFONE).AsString ;
    end;
end;

procedure TRepositorioAGENTE.AtribuiEntidadeParaDB(const coAGENTE: TAGENTE;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
    begin
      ParamByName(FLD_AGENTE_COREN).AsString          := coAGENTE.AGENTE_COREN;
      ParamByName(FLD_AGENTE_NOME).AsString           := coAGENTE.AGENTE_NOME;
      ParamByName(FLD_AGENTE_LOGIN).AsString          := coAGENTE.AGENTE_ESPECIFICACAO ;
      ParamByName(FLD_AGENTE_EMAIL).AsString          := coAGENTE.AGENTE_EMAIL;
      ParamByName(FLD_AGENTE_SENHA).AsString          := coAGENTE.AGENTE_SENHA;
      ParamByName(FLD_AGENTE_DATA_NASC).AsDate        := coAGENTE.AGENTE_DATA_NASC ;
      ParamByName(FLD_AGENTE_ESPECIFICACAO).AsString  := coAGENTE.AGENTE_ESPECIFICACAO;
      ParamByName(FLD_AGENTE_TURNO).AsString          := coAGENTE.AGENTE_TURNO;
      ParamByName(FLD_AGENTE_TELEFONE).AsString       := coAGENTE.AGENTE_TELEFONE;

    end;
  end;

end.
