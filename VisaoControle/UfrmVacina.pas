unit UfrmVacina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, StdCtrls, ExtCtrls, Grids, DBGrids, Menus, Buttons
  , URegraCRUDCarteiraVacinacao
  , URepositorioCarteiraVacinacao
  , UCarteiraVacinacao
  , UUtilitarios
  , UCoren
  , UFrmRegistro
  , ULoteVacina
  , UPaciente
  , UProximaVacina
  , URepositorioProximaVacina
  , URegraCRUDProximaVacina
  , UFrmAgendaVacina
  , URegraCRUDPaciente, Mask, DBXFirebird, DB, SqlExpr, FMTBcd, DBClient,
  Provider
  ;

type
  TfrmVacinas = class(TFrmCRUD)
    gbVacinacao: TGroupBox;
    edCodSus: TLabeledEdit;
    cbVacinas: TComboBox;
    lbVacina: TLabel;
    cbDose: TComboBox;
    lbDose: TLabel;
    edAplicador: TLabeledEdit;
    edCorenApli: TLabeledEdit;
    edLoteVacina: TLabeledEdit;
    edUnidadeSaude: TLabeledEdit;
    gbHistorico: TGroupBox;
    dbVacinacao: TDBGrid;
    btnLocalizarPaciente: TButton;
    stCodigoSUS: TStaticText;
    stNome: TStaticText;
    edDataApli: TMaskEdit;
    Label1: TLabel;
    edVencimento: TMaskEdit;
    Label2: TLabel;
    SQLConVacina: TSQLConnection;
    tbVacinaNova: TSQLTable;
    DataSourceVacina: TDataSource;
    DataSetVacinaNova: TDataSetProvider;
    ClientDataSetVacina: TClientDataSet;
    lbCod: TLabel;
    lbNomepac: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnLocalizarPacienteClick(Sender: TObject);
    procedure edCodSusExit(Sender: TObject);
    procedure btnGravarExit(Sender: TObject);
protected
    FCARTEIRA_VACINACAO: TCARTEIRA_VACINACAO;
    FFRMAGENDAVACINA : TFRMAGENDAVACINA;
    FRegraCRUDPaciente : TRegraCRUDPaciente;
    FRegraCRUDCarteiraVacinacao: TRegraCRUDCarteiraVacinacao;
    FPaciente:TPaciente;


    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
end;

var
  frmVacinas: TfrmVacinas;


implementation
 uses
    UOpcaoPesquisa
  , UEntidade
  , UFrmPesquisa
  , UDialogo
  , UDM
  ;
const
CNT_SELECIONA_VACINA = 'select vacina from vacina_nova group by Vacina';
CNT_SELECIONA_DOSE = 'select dose from vacina_nova group by dose';

{$R *.dfm}

{ TfrmVacinas }

procedure TfrmVacinas.btnGravarExit(Sender: TObject);
begin
  inherited;
   If(MessageBox(Handle,PChar('Deseja registrar retorno?'),'Confirmar',Mb_YesNo + MB_ICONINFORMATION)) = IDYes then
     begin
       btnSair.Click;
       Application.CreateForm(TFrmRegistro, FrmRegistro);
     end;
end;

procedure TfrmVacinas.btnLocalizarPacienteClick(Sender: TObject);
begin
  edCodSus.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(TBL_PACIENTE)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa(STR_PACIENTE)
    .AdicionaFiltro(FLD_NOME));

  if Trim(edCodSus.Text) <> EmptyStr then
    edCodSus.OnExit(btnLocalizarPaciente);
end;


procedure TfrmVacinas.edCodSusExit(Sender: TObject);
begin
  stCodigoSUS.Caption := EmptyStr;
  if Trim(edCodSus.Text) <> EmptyStr then
    try
      FRegraCRUDPaciente.ValidaExistencia(StrToIntDef(edCodSus.Text, 0));
      FCARTEIRA_VACINACAO.ID_SUS := TPACIENTE(
        FRegraCRUDPaciente.Retorna(StrToIntDef(edCodSus.Text, 0)));

      stCodigoSUS.Caption := FCARTEIRA_VACINACAO.ID_SUS.CODIGO_SUS;
      stNome.Caption:= FCARTEIRA_VACINACAO.ID_SUS.NOME;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edCodSus.SetFocus;
        end;
    end;
end;

procedure TfrmVacinas.Finaliza;
begin
  inherited;
  FreeAndNil(FRegraCRUDPaciente);
end;

procedure TfrmVacinas.FormCreate(Sender: TObject);
begin
  inherited;
  dmEntra21.SQLSelect.Close;
  dmEntra21.SQLSelect.CommandText := CNT_SELECIONA_VACINA;
  dmEntra21.SQLSelect.Open;
  while not dmEntra21.SQLSelect.Eof do
    begin
      cbVacinas.Items.Add(dmEntra21.SQLSelect.FieldByName('vacina').AsString);
      dmEntra21.SQLSelect.Next;
    end;
  dmEntra21.SQLSelect.Close;
  dmEntra21.SQLSelect.CommandText := CNT_SELECIONA_DOSE;
  dmEntra21.SQLSelect.Open;
  while not dmEntra21.SQLSelect.Eof do
    begin
      cbDose.Items.Add(dmEntra21.SQLSelect.FieldByName('Dose').AsString);
      dmEntra21.SQLSelect.Next;
    end;
  dmEntra21.SQLSelect.Close;

end;

procedure TfrmVacinas.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbVacinacao.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TfrmVacinas.Inicializa;
begin
  inherited;
  DefineEntidade(@FCARTEIRA_VACINACAO, TCARTEIRA_VACINACAO);
  DefineRegraCRUD(@FregraCRUDCARTEIRAVACINACAO, TRegraCRUDCarteiraVacinacao);

    AdicionaOpcaoPesquisa(TOpcaoPesquisa
    .Create
    .AdicionaFiltro(FLD_NOME)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa(STR_CARTEIRA_VACINACAO)
    .DefineVisao(TBL_CARTEIRA_VACINACAO));

    FRegraCRUDPaciente := TRegraCRUDPaciente.Create;
end;

procedure TfrmVacinas.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edCodSus.SetFocus;
end;

procedure TfrmVacinas.PreencheEntidade;
begin
  inherited;
  FCARTEIRA_VACINACAO.ID_SUS.ID         := StrToInt(edCodSus.Text);
  FCARTEIRA_VACINACAO.NOME              := stNome.Caption;
  FCARTEIRA_VACINACAO.VACINA            := cbVacinas.text;
  FCARTEIRA_VACINACAO.DOSE              := cbDose.Text;
  FCARTEIRA_VACINACAO.DATA              := StrToDate(edDataApli.Text);
  FCARTEIRA_VACINACAO.RESPONSAVEL       := edAplicador.Text;
  FCARTEIRA_VACINACAO.COD_COREN         := edCorenApli.Text;
  FCARTEIRA_VACINACAO.COD_LOTE          := edLoteVacina.Text;
  FCARTEIRA_VACINACAO.LOTE_VENCIMENTO   := StrToDate(edVencimento.Text);
  FCARTEIRA_VACINACAO.UNIDADE_SAUDE     := edUnidadeSaude.Text;

end;

procedure TfrmVacinas.PreencheFormulario;
begin
  inherited;
  //edCodSus.Text         :=IntToStr(FCARTEIRA_VACINACAO.ID_SUS.ID)          ;
  stNome.Caption        :=FCARTEIRA_VACINACAO.NOME              ;
  cbVacinas.text        :=FCARTEIRA_VACINACAO.VACINA            ;
  cbDose.Text           :=FCARTEIRA_VACINACAO.DOSE              ;
  edDataApli.Text       :=DateToStr(FCARTEIRA_VACINACAO.DATA)   ;
  edAplicador.Text      :=FCARTEIRA_VACINACAO.RESPONSAVEL       ;
  edCorenApli.Text      :=FCARTEIRA_VACINACAO.COD_COREN         ;
  edLoteVacina.Text     :=FCARTEIRA_VACINACAO.COD_LOTE          ;
  edVencimento.Text     :=DateToStr(FCARTEIRA_VACINACAO.LOTE_VENCIMENTO)  ;
  edUnidadeSaude.Text   :=FCARTEIRA_VACINACAO.UNIDADE_SAUDE        ;

end;

end.
{}
