unit UFrmRegistro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, ExtCtrls, Menus, Buttons, StdCtrls
  , URegraCRUD
  , UDM
  , UProximaVacina
  , URepositorioProximaVacina
  , URegraCRUDProximaVacina
  , UUtilitarios, Mask
  ;

type
  TFrmRegistro = class(TFrmCRUD)
    lbTelefone: TLabeledEdit;
    edPaciente: TLabeledEdit;
    GroupBox1: TGroupBox;
    cbVacina: TComboBox;
    lbVacina: TLabel;
    cbDose: TComboBox;
    lbDose: TLabel;
    edData: TMaskEdit;
    lbData: TLabel;
 protected
    FPROXIMAVACINA : TPROXIMAVACINA;
    FRegraCRUDProximaVacina: TRegraCRUDProximaVacina;
    procedure Inicializa; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  FrmRegistro: TFrmRegistro;

implementation
 uses
    UOpcaoPesquisa
  , UEntidade
  , UFrmPesquisa
  , UDialogo
  ;

{$R *.dfm}

{ TFrmRegistro }

procedure TFrmRegistro.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  GroupBox1.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmRegistro.Inicializa;
begin
  inherited;
  DefineEntidade(@FPROXIMAVACINA, TPROXIMAVACINA);
  DefineRegraCRUD(@FregraCRUDPROXIMAVACINA, TRegraCRUDPROXIMAVACINA);

    AdicionaOpcaoPesquisa(TOpcaoPesquisa
    .Create
    .AdicionaFiltro(FLD_NOME)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa(STR_PROX_VACINA)
    .DefineVisao(TBL_PROX_VACINA));
end;

procedure TFrmRegistro.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  lbTelefone.SetFocus;
end;

procedure TFrmRegistro.PreencheEntidade;
begin
  inherited;
   FPROXIMAVACINA.SUS_CODIGO        := lbTelefone.Text;
   FPROXIMAVACINA.NOME              := edPaciente.Text;
   FPROXIMAVACINA.DATA_RETORNO      := StrToDate(edData.Text);
   FPROXIMAVACINA.DOSE              := cbDose.Text;
   FPROXIMAVACINA.VACINA_RETORNO    := cbVacina.Text;
end;

procedure TFrmRegistro.PreencheFormulario;
begin
  inherited;
   lbTelefone.Text      :=FPROXIMAVACINA.SUS_CODIGO ;
   edPaciente.Text      :=FPROXIMAVACINA.NOME ;
   edData.Text          := DateTOStr(FPROXIMAVACINA.DATA_RETORNO) ;
   cbDose.Text          :=FPROXIMAVACINA.DOSE;
   cbVacina.Text        :=FPROXIMAVACINA.VACINA_RETORNO  ;
end;

end.
