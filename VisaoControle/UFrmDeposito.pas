unit UFrmDeposito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Grids, DBGrids, Menus, Buttons, StdCtrls, ExtCtrls, Mask
  , URegraCRUDLoteVacina
  , URepositorioLoteVacina
  , ULoteVacina
  , UUtilitarios, FMTBcd, DBXFirebird, DB, SqlExpr, DBClient, Provider
  ;

type
  TfrmDeposito = class(TFrmCRUD)
    gbDeposito: TGroupBox;
    dbDeposito: TDBGrid;
    edNomeVacina: TLabeledEdit;
    edLaboratorio: TLabeledEdit;
    edLoteVacina: TLabeledEdit;
    edQuantidade: TLabeledEdit;
    edVencimento: TMaskEdit;
    lbVencimento: TLabel;
    tbDeposito: TSQLTable;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    SQLConnection1: TSQLConnection;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
protected
    FLOTEVACINA: TLOTEVACINA;

    FRegraCRUDLOTEVACINA: TRegraCRUDLOTEVACINA;

    procedure Inicializa; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
end;

var
  frmDeposito: TfrmDeposito;

implementation
 uses
    UOpcaoPesquisa
  , UEntidade
  , UFrmPesquisa
  , UDialogo;
{$R *.dfm}

{ TfrmDeposito }

procedure TfrmDeposito.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
    gbDeposito.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TfrmDeposito.Inicializa;
begin
  inherited;
    DefineEntidade(@FLOTEVACINA, TLOTEVACINA);
    DefineRegraCRUD(@FRegraCRUDLOTEVACINA, TRegraCRUDLOTEVACINA);

      AdicionaOpcaoPesquisa(TOpcaoPesquisa
      .Create
      .AdicionaFiltro(FLD_VACINA_NOME)
      .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
      .DefineNomePesquisa(STR_LOTE_VACINA)
      .DefineVisao(TBL_LOTE_VACINA));
end;

procedure TfrmDeposito.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNomeVacina.SetFocus;
end;

procedure TfrmDeposito.PreencheEntidade;
begin
  inherited;
    begin
       FLOTEVACINA.VACINA_NOME          := edNomeVacina.Text  ;
       FLOTEVACINA.LOTE                 := edLoteVacina.Text  ;
       FLOTEVACINA.LABORATORIO          := edLaboratorio.Text ;
       FLOTEVACINA.VENCIMENTO_LOTE      := StrToDate(edVencimento.Text)  ;
       FLOTEVACINA.QUANTIDADE_ESTOQUE   := edQuantidade.Text  ;
    end;
end;

procedure TfrmDeposito.PreencheFormulario;
begin
  inherited;
    begin
      edNomeVacina.Text   := FLOTEVACINA.VACINA_NOME ;
      edLoteVacina.Text   := FLOTEVACINA.LOTE ;
      edLaboratorio.Text  := FLOTEVACINA.LABORATORIO ;
      edVencimento.Text   := DateToStr(FLOTEVACINA.VENCIMENTO_LOTE) ;
      edQuantidade.Text   := FLOTEVACINA.QUANTIDADE_ESTOQUE  ;
    end;
end;

procedure TfrmDeposito.Timer1Timer(Sender: TObject);
begin
  inherited;
 tbDeposito.Refresh;
 ClientDataSet1.Refresh;
end;

end.
