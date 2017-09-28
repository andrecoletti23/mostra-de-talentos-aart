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
  , ULoteVacina
  , UPaciente
  , UProximaVacina
  , URepositorioProximaVacina
  , URegraCRUDProximaVacina
  , UFrmAgendaVacina
  , UVacinaNova
  , URepositorioVacinaNova
  , URepositorioPaciente
  , URegraCRUDPaciente
  ;

type
  TfrmVacinas = class(TFrmCRUD)
    gbVacinacao: TGroupBox;
    edCodSus: TLabeledEdit;
    edNome: TLabeledEdit;
    cbVacinas: TComboBox;
    lbVacina: TLabel;
    cbDose: TComboBox;
    lbDose: TLabel;
    edDataApli: TLabeledEdit;
    edAplicador: TLabeledEdit;
    edCorenApli: TLabeledEdit;
    edLoteVacina: TLabeledEdit;
    edVencimento: TLabeledEdit;
    edUnidadeSaude: TLabeledEdit;
    gbHistorico: TGroupBox;
    dbVacincao: TDBGrid;
    edID: TLabeledEdit;
    btnLocalizarCidade: TButton;
    stNomeCidade: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure cbVacinasExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure dbVacincaoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnLocalizarCidadeClick(Sender: TObject);
    procedure btnLocalizarCidadeExit(Sender: TObject);
protected
    FCARTEIRA_VACINACAO: TCARTEIRA_VACINACAO;
    FPROXIMAVACINA  : TPROXIMAVACINA;
    FFRMAGENDAVACINA : TFRMAGENDAVACINA;
    FVACINANOVA : TVACINANOVA;
    FPACIENTE : TPACIENTE;

    FRegraCRUDCarteiraVacinacao: TRegraCRUDCarteiraVacinacao;
    FRegraCRUDProximaVacina:  TRegraCRUDProximaVacina;
    FRegraCRUDPaciente : TRegraCRUDPaciente;

    procedure Inicializa; override;
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
  , URegraCRUD
  ;
{$R *.dfm}

{ TfrmVacinas }
procedure TfrmVacinas.btnGravarClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFrmAgendaVacina, FrmAgendaVacina);
end;

procedure TfrmVacinas.btnLocalizarCidadeClick(Sender: TObject);
begin
  edID.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(TBL_PACIENTE)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa(STR_PACIENTE)
    .AdicionaFiltro(FLD_ENTIDADE_ID));

  if Trim(edCodSus.Text) <> EmptyStr then
    edCodSus.OnExit(btnLocalizarCidade);
end;

procedure TfrmVacinas.btnLocalizarCidadeExit(Sender: TObject);
begin
  stNomeCidade.Caption := EmptyStr;
  if Trim(edID.Text) <> EmptyStr then
    try
      FRegraCRUDPaciente.ValidaExistencia(StrToIntDef(edID.Text, 0));
      FCARTEIRA_VACINACAO.ID_SUS := TPACIENTE(
        FRegraCRUDPaciente.Retorna(StrToIntDef(edID.Text, 0)));

      stNomeCidade.Caption := FCARTEIRA_VACINACAO.ID_SUS.CODIGO_SUS;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edID.SetFocus;
        end;
    end;
end;

procedure TfrmVacinas.cbVacinasExit(Sender: TObject);
begin
  inherited;
  dmEntra21.SQLSelect.CommandText := 'select dose_vacina from dose';
  dmEntra21.SQLSelect.Open;
  while not dmEntra21.SQLSelect.Eof do
    begin
      cbDose.Items.Add(dmEntra21.SQLSelect.FieldByName('dose_vacina').AsString);
      dmEntra21.SQLSelect.Next;
    end;
  dmEntra21.SQLSelect.Close;
end;

procedure TfrmVacinas.dbVacincaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (Column.Field.FieldName = 'VACINA') then
      begin
         if FLD_VACINA = FLD_CAR_VACINA then
            begin
               dbVacincao.Canvas.Font.Color:=clGreen ;
               dbVacincao.Canvas.FillRect(Rect);
               dbVacincao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
            end
         else
             begin
               dbVacincao.Canvas.Font.Color:= clRed ;
               dbVacincao.Canvas.FillRect(Rect);
               dbVacincao.DefaultDrawColumnCell(Rect, DataCol, Column, State);
             end;
      end;
end;

procedure TfrmVacinas.FormCreate(Sender: TObject);
begin
  inherited;
  dmEntra21.SQLSelect.CommandText := 'select nome from vacina group by nome';
  dmEntra21.SQLSelect.Open;
  while not dmEntra21.SQLSelect.Eof do
    begin
      cbVacinas.Items.Add(dmEntra21.SQLSelect.FieldByName('Nome').AsString);
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
end;

procedure TfrmVacinas.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNome.SetFocus;
end;

procedure TfrmVacinas.PreencheEntidade;
begin
  inherited;
  //FCARTEIRA_VACINACAO.ID_SUS           := edID.Text;
  //FCARTEIRA_VACINACAO.COD_VACINACAO    := edCodSus.Text;
  FCARTEIRA_VACINACAO.NOME             := edNome.Text;
  FCARTEIRA_VACINACAO.VACINA           := cbVacinas.text;
  FCARTEIRA_VACINACAO.DOSE             := cbDose.Text;
  FCARTEIRA_VACINACAO.DATA             := StrToDate(edDataApli.Text);
  FCARTEIRA_VACINACAO.RESPONSAVEL      := edAplicador.Text;
  FCARTEIRA_VACINACAO.COD_COREN        := edCorenApli.Text;
  FCARTEIRA_VACINACAO.COD_LOTE         := edLoteVacina.Text;
  FCARTEIRA_VACINACAO.LOTE_VENCIMENTO  := StrToDate(edVencimento.Text);
  FCARTEIRA_VACINACAO.UNIDADE_SAUDE    := edUnidadeSaude.Text;

end;

procedure TfrmVacinas.PreencheFormulario;
begin
  inherited;
  //edID.Text             := IntToStr(FCARTEIRA_VACINACAO.ID_SUS.ID);
  //edCodSus.Text         :=FCARTEIRA_VACINACAO.COD_VACINACAO;
  edNome.Text           :=FCARTEIRA_VACINACAO.NOME              ;
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
