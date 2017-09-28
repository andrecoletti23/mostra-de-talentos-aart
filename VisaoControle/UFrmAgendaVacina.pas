unit UFrmAgendaVacina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, StdCtrls, ExtCtrls
  , URepositorioProximaVacina
  , URegraCrudProximaVacina
  , UProximaVacina
  , UVacinaNova
  , URepositorioVacinaNova
  , UCarteiraVacinacao
  , URepositorioCarteiraVacinacao
  , URepositorioPaciente
  , UPaciente
  , UUtilitarios, Mask, Grids, DBGrids, DBXFirebird, FMTBcd, DB, DBClient,
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
    dbgProxVacina: TDBGrid;
    SQLConnAgenda: TSQLConnection;
    tbVacinaNova: TSQLTable;
    DataSetProviderAgenda: TDataSetProvider;
    ClientDataSetAgenda: TClientDataSet;
    DataSourceagenda: TDataSource;
    Timer1: TTimer;
    StaticText1: TStaticText;
    procedure Timer1Timer(Sender: TObject);
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
  FPACIENTE : TPACIENTE;
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
  gbProximaVacina.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmAgendaVacina.Inicializa;
begin
  inherited;
  DefineEntidade(@FProximaVacina, TProximaVacina);
  DefineRegraCRUD(@FRegraCRUDProximaVacina, TRegraCRUDProximaVacina);

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
  FPROXIMAVACINA.DATA_RETORNO       := StrToDate(edSusRetorno.Text);
  FPROXIMAVACINA.VACINA_RETORNO     := cbVacinaRetorno.Text;
  FPROXIMAVACINA.DOSE               := cbDoseRetorno.Text;
end;

procedure TFrmAgendaVacina.PreencheFormulario;
begin
  inherited;
  edSusRetorno.Text     := FPROXIMAVACINA.SUS_CODIGO;
  StaticText1.Caption   := inttostr(FPACIENTE.ID);
  edNomeRetorno.Text    := FPROXIMAVACINA.NOME ;
  edDataRetorno.Text    := DateToStr(FPROXIMAVACINA.DATA_RETORNO);
  cbVacinaRetorno.Text  := FPROXIMAVACINA.VACINA_RETORNO  ;
  cbDoseRetorno.Text    := FPROXIMAVACINA.DOSE;
end;

procedure TFrmAgendaVacina.Timer1Timer(Sender: TObject);
begin
  inherited;
 tbVacinaNova.Refresh;
 ClientDataSetAgenda.Refresh;
end;

end.
