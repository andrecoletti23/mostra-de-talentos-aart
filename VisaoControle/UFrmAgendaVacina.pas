unit UFrmAgendaVacina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, StdCtrls, ExtCtrls
  , URepositorioProximaVacina
  , URegraCrudProximaVacina
  , UProximaVacina
  , UUtilitarios
  , UDM
  , Mask, Grids, DBGrids, DBXFirebird, FMTBcd, DB, DBClient,
  Provider, SqlExpr
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
    procedure FormCreate(Sender: TObject);
protected
    FProximaVacina: TProximaVacina;
    FRepositorioProximaVacina : TRepositorioProximaVacina;
    FRegraCRUDProximaVacina: TRegraCRUDProximaVacina;
    procedure Inicializa; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  FrmAgendaVacina: TFrmAgendaVacina;
implementation
 uses
    UOpcaoPesquisa
  , UEntidade
  , UFrmPesquisa
  , UDialogo
  ;
const
CNT_SELECIONA_VAC_RETORNO = 'select vacina from vacina_nova group by Vacina';
CNT_SELECIONA_DOSE_RETORNO = 'select dose from vacina_nova group by dose';
{$R *.dfm}

{ TFrmAgendaVacina }

procedure TFrmAgendaVacina.FormCreate(Sender: TObject);
begin
  inherited;
  dmEntra21.SQLSelect.Close;
  dmEntra21.SQLSelect.CommandText := CNT_SELECIONA_VAC_RETORNO;
  dmEntra21.SQLSelect.Open;
  while not dmEntra21.SQLSelect.Eof do
    begin
      cbVacinaRetorno.Items.Add(dmEntra21.SQLSelect.FieldByName('vacina').AsString);
      dmEntra21.SQLSelect.Next;
    end;
  dmEntra21.SQLSelect.Close;
  dmEntra21.SQLSelect.CommandText := CNT_SELECIONA_DOSE_RETORNO;
  dmEntra21.SQLSelect.Open;
  while not dmEntra21.SQLSelect.Eof do
    begin
      cbDoseRetorno.Items.Add(dmEntra21.SQLSelect.FieldByName('Dose').AsString);
      dmEntra21.SQLSelect.Next;
    end;
  dmEntra21.SQLSelect.Close;

end;

procedure TFrmAgendaVacina.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbProximaVacina.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmAgendaVacina.Inicializa;
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
      FPROXIMAVACINA.DATA_RETORNO       := StrToDate(edSusRetorno.Text);
      FPROXIMAVACINA.VACINA_RETORNO     := cbVacinaRetorno.Text;
      FPROXIMAVACINA.DOSE               := cbDoseRetorno.Text;
end;

procedure TFrmAgendaVacina.PreencheFormulario;
begin
  inherited;
      edSusRetorno.Text     := FPROXIMAVACINA.SUS_CODIGO;
      edNomeRetorno.Text    := FPROXIMAVACINA.NOME ;
      edDataRetorno.Text    := DateToStr(FPROXIMAVACINA.DATA_RETORNO);
      cbVacinaRetorno.Text  := FPROXIMAVACINA.VACINA_RETORNO  ;
      cbDoseRetorno.Text    := FPROXIMAVACINA.DOSE;
end;

end.
