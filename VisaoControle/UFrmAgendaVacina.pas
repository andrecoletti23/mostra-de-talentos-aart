unit UFrmAgendaVacina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, StdCtrls, ExtCtrls
  , URepositorioProximaVacina
  , URegraCrudProximaVacina
  , UProximaVacina
  , UUtilitarios, Mask, Grids, DBGrids
  ;

type
  TFrmAgendaVacina = class(TFrmCRUD)
    gbProximaVacina: TGroupBox;
    edSusRetorno: TLabeledEdit;
    edNomeRetorno: TLabeledEdit;
    edDataRetorno: TMaskEdit;
    cbVacinaRetorno: TComboBox;
    cbDoseRetorno: TComboBox;
    lbData: TLabel;
    lbDose: TLabel;
    lbVacina: TLabel;
    dbgProxVacina: TDBGrid;
private
    procedure Inicializa; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  FrmAgendaVacina: TFrmAgendaVacina;
  FProximaVacina: TProximaVacina;
  FRegraCRUDProximaVacina: TRegraCRUDProximaVacina;
implementation
 uses
    UOpcaoPesquisa
  , UEntidade
  , UFrmPesquisa
  , UDialogo
  , UDM
  ;
{$R *.dfm}

{ TFrmAgendaVacina }

procedure TFrmAgendaVacina.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;

end;

procedure TFrmAgendaVacina.Inicializa;
begin
  inherited;
  DefineEntidade(@FProximaVacina, TProximaVacina);
  DefineRegraCRUD(@FRegraCRUDProximaVacina, TRegraCRUDProximaVacina;

    AdicionaOpcaoPesquisa(TOpcaoPesquisa
    .Create
    .AdicionaFiltro(FLD_NOME)
    .AdicionaFiltro(FLD_SUS_CODIGO)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa(STR_PROX_VACINA)
    .DefineVisao(TBL_PROX_VACINA));
end;

procedure TFrmAgendaVacina.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNomeRetorno.SetFocus;
end;

procedure TFrmAgendaVacina.PreencheEntidade;
begin
  inherited;
  FPROXIMAVACINA.SUS_CODIGO         := edSusRetorno.Text;
  FPROXIMAVACINA.NOME               := edNomeRetorno.Text;
  FPROXIMAVACINA.DATA_RETORNO       := edSusRetorno.Text;
  FPROXIMAVACINA.VACINA_RETORNO     := cbVacinaRetorno.Text;
  FPROXIMAVACINA.DOSE               := cbDoseRetorno;
end;

procedure TFrmAgendaVacina.PreencheFormulario;
begin
  inherited;
  edSusRetorno.Text     :=FPROXIMAVACINA.SUS_CODIGO;
  edNomeRetorno.Text    :=FPROXIMAVACINA.NOME ;
  edDataRetorno.Text    :=FPROXIMAVACINA.DATA_RETORNO;
  cbVacinaRetorno.Text  :=FPROXIMAVACINA.VACINA_RETORNO  ;
  cbDoseRetorno.Text    := FPROXIMAVACINA.DOSE;
end;

end.
