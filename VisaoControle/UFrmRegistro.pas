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
  , UUtilitarios
  ;

type
  TFrmRegistro = class(TFrmCRUD)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    GroupBox1: TGroupBox;
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
  LabeledEdit1.SetFocus;
end;

procedure TFrmRegistro.PreencheEntidade;
begin
  inherited;
   FPROXIMAVACINA.SUS_CODIGO        := LabeledEdit1.Text;
   FPROXIMAVACINA.NOME              := LabeledEdit3.Text;
   FPROXIMAVACINA.DATA_RETORNO      := StrToDate(LabeledEdit2.Text);
   FPROXIMAVACINA.DOSE              :=LabeledEdit4.Text;
   FPROXIMAVACINA.VACINA_RETORNO    := LabeledEdit5.Text;
end;

procedure TFrmRegistro.PreencheFormulario;
begin
  inherited;
   LabeledEdit1.Text      :=FPROXIMAVACINA.SUS_CODIGO ;
   LabeledEdit3.Text      :=FPROXIMAVACINA.NOME ;
   LabeledEdit2.Text      := DateTOStr(FPROXIMAVACINA.DATA_RETORNO) ;
   LabeledEdit4.Text      :=FPROXIMAVACINA.DOSE;
    LabeledEdit5.Text     :=FPROXIMAVACINA.VACINA_RETORNO  ;
end;

end.
