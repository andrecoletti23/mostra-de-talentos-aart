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
  , Mask
  , UProximaVacina
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
    gbRetorno: TGroupBox;
    edSusRetorno: TLabeledEdit;
    edNomeRetorno: TLabeledEdit;
    edDataRetorno: TMaskEdit;
    cbVacinaRetorno: TComboBox;
    lbDataRetorno: TLabel;
    lbVacinaRetorno: TLabel;
    cbDoseRetorno: TComboBox;
    lbDoseRetorno: TLabel;
protected
    FCARTEIRA_VACINACAO: TCARTEIRA_VACINACAO;
    FPROXIMAVACINA : TPROXIMAVACINA;

    FRegraCRUDCarteiraVacinacao: TRegraCRUDCarteiraVacinacao;
    FRegraCRUDProximaVacina: TRegraCRUDProximaVacina;

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
  , UDialogo;
{$R *.dfm}

{ TfrmVacinas }

procedure TfrmVacinas.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbVacinacao.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
  gbRetorno.Enabled :=  FTipoOperacaoUsuario In [touInsercao];
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
    .DefineNomePesquisa(STR_PROX_VACINA)
    .DefineVisao(TBL_PROX_VACINA));
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
  {if gbRetorno.Enabled = false then
      begin
      inherited;
      DefineEntidade(@FPROXIMAVACINA, TPROXIMAVACINA);
      DefineRegraCRUD(@FregraCRUDPROXIMAVACINA, TRegraCRUDPROXIMAVACINA);
      FPROXIMAVACINA.SUS_CODIGO        := edCodSus.Text;
      FPROXIMAVACINA.NOME              := edNome.Text;
      FPROXIMAVACINA.DATA_RETORNO      := StrToDate(edDataApli.Text);
      FPROXIMAVACINA.VACINA_RETORNO    := cbVacinaRetorno.Text;
      FPROXIMAVACINA.DOSE_RETORNO      := cbDoseRetorno.Text;
    end;}


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
  if gbRetorno.Enabled = true then
    begin
      edCodSus.Text:=FPROXIMAVACINA.SUS_CODIGO         ;
      edNome.Text:=FPROXIMAVACINA.NOME               ;
      edDataApli.Text      := DateToStr(FPROXIMAVACINA.DATA_RETORNO);
      cbVacinaRetorno.Text:=FPROXIMAVACINA.VACINA_RETORNO     ;
      cbDoseRetorno.Text:= FPROXIMAVACINA.DOSE_RETORNO      ;
    end;
end;

end.
