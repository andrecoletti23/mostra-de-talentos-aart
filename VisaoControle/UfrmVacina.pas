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
    procedure FormCreate(Sender: TObject);
    procedure cbVacinasExit(Sender: TObject);
protected
    FCARTEIRA_VACINACAO: TCARTEIRA_VACINACAO;
    FPROXIMAVACINA  : TPROXIMAVACINA;

    FRegraCRUDCarteiraVacinacao: TRegraCRUDCarteiraVacinacao;
    FRegraCRUDProximaVacina:  TRegraCRUDProximaVacina;

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
  ;
{$R *.dfm}

{ TfrmVacinas }
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
    .DefineNomePesquisa(STR_PACIENTE)
    .DefineVisao(TBL_PACIENTE));
end;

procedure TfrmVacinas.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNome.SetFocus;
end;

procedure TfrmVacinas.PreencheEntidade;
begin
  inherited;
  FCARTEIRA_VACINACAO.COD_VACINACAO    := edCodSus.Text;
  FCARTEIRA_VACINACAO.NOME             := edNome.Text;
  FCARTEIRA_VACINACAO.VACINA           := cbVacinas.text;
  FCARTEIRA_VACINACAO.DOSE             := cbDose.Text;
  FCARTEIRA_VACINACAO.DATA             := StrToDate(edDataApli.Text);
  FCARTEIRA_VACINACAO.RESPONSAVEL      := edAplicador.Text;
  FCARTEIRA_VACINACAO.COD_COREN        := edCorenApli.Text;
  FCARTEIRA_VACINACAO.COD_LOTE         := edLoteVacina.Text;
  FCARTEIRA_VACINACAO.LOTE_VENCIMENTO  := StrToDate(edVencimento.Text);
  FCARTEIRA_VACINACAO.UNIDADE_SAUDE    := edUnidadeSaude.Text;

  {FPROXIMAVACINA.SUS_CODIGO         := edSusRetorno.Text;
  FPROXIMAVACINA.NOME               := edNomeRetorno.Text;
  FPROXIMAVACINA.DATA_RETORNO       := edSusRetorno.Text;
  FPROXIMAVACINA.VACINA_RETORNO     := cbProximaVacina.Text; }
end;

procedure TfrmVacinas.PreencheFormulario;
begin
  inherited;
  edCodSus.Text         :=FCARTEIRA_VACINACAO.COD_VACINACAO     ;
  edNome.Text           :=FCARTEIRA_VACINACAO.NOME              ;
  cbVacinas.text        :=FCARTEIRA_VACINACAO.VACINA            ;
  cbDose.Text           :=FCARTEIRA_VACINACAO.DOSE              ;
  edDataApli.Text       :=DateToStr(FCARTEIRA_VACINACAO.DATA)   ;
  edAplicador.Text      :=FCARTEIRA_VACINACAO.RESPONSAVEL       ;
  edCorenApli.Text      :=FCARTEIRA_VACINACAO.COD_COREN         ;
  edLoteVacina.Text     :=FCARTEIRA_VACINACAO.COD_LOTE          ;
  edVencimento.Text     :=DateToStr(FCARTEIRA_VACINACAO.LOTE_VENCIMENTO)  ;
  edUnidadeSaude.Text   :=FCARTEIRA_VACINACAO.UNIDADE_SAUDE        ;

  {edSusRetorno.Text :=FPROXIMAVACINA.SUS_CODIGO;
  edNomeRetorno.Text:=FPROXIMAVACINA.NOME ;
  edSusRetorno.Text:=FPROXIMAVACINA.DATA_RETORNO;
  cbProximaVacina.Text:=FPROXIMAVACINA.VACINA_RETORNO  ;  }
end;

end.
{}
