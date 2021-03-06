unit URepositorioPaciente;

interface

uses
    UPaciente
  , UEntidade
  , URepositorioDB
  , SqlExpr
  ;

type
  TRepositorioPaciente = class(TRepositorioDB<TPACIENTE>)
  private

  public
    constructor Create;
    //destructor Destroy; override;

    procedure AtribuiDBParaEntidade(const coPACIENTE: TPACIENTE); override;
    procedure AtribuiEntidadeParaDB(const coPACIENTE: TPACIENTE;
                                    const coSQLQuery: TSQLQuery); override;
  end;


implementation

uses
    UDM
  , SysUtils
  , StrUtils
  ;

{ TRepositorioPACIENTE }

constructor TRepositorioPACIENTE.Create;
begin
  Inherited Create(TPACIENTE, TBL_PACIENTE, FLD_ENTIDADE_ID, STR_PACIENTE);
end;

{destructor TRepositorioAeroporto.Destroy;
begin
  FreeAndNil(FRepositorioCidade);
  inherited;
end; }

procedure TRepositorioPACIENTE.AtribuiDBParaEntidade(
  const coPACIENTE: TPACIENTE);
begin
  inherited;
  with FSQLSelect do
    begin
      coPACIENTE.CODIGO_SUS           := FieldByName(FLD_CODIGO_SUS).AsString;
      coPACIENTE.NOME                 := FieldByName(FLD_NOME).AsString;
      coPACIENTE.NASCIMENTO           := FieldByName(FLD_NASCIMENTO).AsDateTime;
      coPACIENTE.SEXO                 := FieldByName(FLD_SEXO).AsString;
      coPACIENTE.CPF                  := FieldByName(FLD_CPF).AsString;
      coPACIENTE.RG                   := FieldByName(FLD_RG).AsInteger;
      coPACIENTE.UF                   := FieldByName(FLD_UF).AsString;
      coPACIENTE.CIDADE               := FieldByName(FLD_CIDADE).AsString;
      coPACIENTE.ENDERECO             := FieldByName(FLD_ENDERECO).AsString;
      coPACIENTE.TEL_FIXO             := FieldByName(FLD_TEL_FIXO).AsString;
      coPACIENTE.CELULAR              := FieldByName(FLD_CELULAR).AsString;
      coPACIENTE.PAI                  := FieldByName(FLD_PAI).AsString;
      coPACIENTE.MAE                  := FieldByName(FLD_MAE).AsString;
      coPACIENTE.ESTADO_CIVIL         := FieldByName(FLD_ESTADO_CIVIL).AsString;
      coPACIENTE.ORGAO_EMISSOR        := FieldByName(FLD_ORGAO_EMISSOR).AsString;
      coPACIENTE.DATA_EMISSAO         := FieldByName(FLD_DATA_EMISSAO).AsDateTime;
      coPACIENTE.BAIRRO               := FieldByName(FLD_BAIRRO).AsString;
      coPACIENTE.REFERENCIA           := FieldByName(FLD_REFERENCIA).AsString;
      coPACIENTE.TEL_COMERCIAL        := FieldByName(FLD_TEL_COMERCIAL).AsString;
      coPACIENTE.TIPO_SANGUE          := FieldByName(FLD_TIPO_SANGUE).AsString;
      coPACIENTE.PESSOA_RECADO        := FieldByName(FLD_PESSOA_RECADO).AsString;


    end;
end;

procedure TRepositorioPACIENTE.AtribuiEntidadeParaDB(
  const coPACIENTE: TPACIENTE; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_CODIGO_SUS).AsString       := coPACIENTE.CODIGO_SUS;
    ParamByName(FLD_NOME).AsString             := coPACIENTE.NOME;
    ParamByName(FLD_NASCIMENTO).AsDate         := coPACIENTE.NASCIMENTO;
    ParamByName(FLD_SEXO).AsString             := coPACIENTE.SEXO;
    ParamByName(FLD_CPF).AsString              := coPACIENTE.CPF;
    ParamByName(FLD_RG).AsInteger              := coPACIENTE.RG;
    ParamByName(FLD_UF).AsString               := coPACIENTE.UF;
    ParamByName(FLD_CIDADE).AsString           := coPACIENTE.CIDADE;
    ParamByName(FLD_ENDERECO).AsString         := coPACIENTE.ENDERECO;
    ParamByName(FLD_TEL_FIXO).AsString         := coPACIENTE.TEL_FIXO;
    ParamByName(FLD_CELULAR).AsString          := coPACIENTE.CELULAR;
    ParamByName(FLD_PAI).AsString              := coPACIENTE.PAI;
    ParamByName(FLD_MAE).AsString              := coPACIENTE.MAE;
    ParamByName(FLD_ESTADO_CIVIL).AsString     := coPACIENTE.ESTADO_CIVIL;
    ParamByName(FLD_ORGAO_EMISSOR).AsString    := coPACIENTE.ORGAO_EMISSOR;
    ParamByName(FLD_DATA_EMISSAO).AsDate       := coPACIENTE.DATA_EMISSAO;
    ParamByName(FLD_BAIRRO).AsString           := coPACIENTE.BAIRRO;
    ParamByName(FLD_REFERENCIA).AsString       := coPACIENTE.REFERENCIA;
    ParamByName(FLD_TEL_COMERCIAL).AsString    := coPACIENTE.TEL_COMERCIAL;
    ParamByName(FLD_TIPO_SANGUE).AsString      := coPACIENTE.TIPO_SANGUE;
    ParamByName(FLD_PESSOA_RECADO).AsString    := coPACIENTE.PESSOA_RECADO;
  end;
end;

end.
