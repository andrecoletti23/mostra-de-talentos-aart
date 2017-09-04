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
protected
    FCARTEIRA_VACINACAO: TCARTEIRA_VACINACAO;

    FRegraCRUDCarteiraVacinacao: TRegraCRUDCarteiraVacinacao;

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
  FCARTEIRA_VACINACAO.DOSE             := StrToInt(cbDose.Text);//Mudar para String DB
  FCARTEIRA_VACINACAO.DATA             := edDataApli.Text;
  FCARTEIRA_VACINACAO.RESPONSAVEL      := edAplicador.Text;
  FCARTEIRA_VACINACAO.COD_COREN        := edCorenApli.Text;
  FCARTEIRA_VACINACAO.COD_LOTE         := edLoteVacina.Text;
  FCARTEIRA_VACINACAO.LOTE_VENCIMENTO  := edVencimento.Text;
  //FCARTEIRA_VACINACAO       := edUnidadeDeSaude;
end;

procedure TfrmVacinas.PreencheFormulario;
begin
  inherited;
  edCodSus.Text         :=FCARTEIRA_VACINACAO.COD_VACINACAO     ;
  edNome.Text           :=FCARTEIRA_VACINACAO.NOME              ;
  cbVacinas.text        :=FCARTEIRA_VACINACAO.VACINA            ;
  cbDose.Text           :=IntToStr(FCARTEIRA_VACINACAO.DOSE)    ;
  edDataApli.Text       :=FCARTEIRA_VACINACAO.DATA              ;
  edAplicador.Text      :=FCARTEIRA_VACINACAO.RESPONSAVEL       ;
  edCorenApli.Text      :=FCARTEIRA_VACINACAO.COD_COREN         ;
  edLoteVacina.Text     :=FCARTEIRA_VACINACAO.COD_LOTE          ;
  edVencimento.Text     :=FCARTEIRA_VACINACAO.LOTE_VENCIMENTO   ;
  //edUnidadeDeSaude      :=FCARTEIRA_VACINACAO        ;
end;

end.
