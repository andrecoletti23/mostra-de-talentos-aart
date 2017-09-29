unit UFrmTelaInicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids,UFrmPacientes, Buttons, DBXFirebird, FMTBcd,
  DB, Provider, DBClient, SqlExpr;

type
  TfrmTelaInicial = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SQLConInicio: TSQLConnection;
    tbProxInicio: TSQLTable;
    ClientDataSetInicio: TClientDataSet;
    DataSetPInicio: TDataSetProvider;
    DataSource1: TDataSource;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaInicial: TfrmTelaInicial;

implementation

uses
    UDM
  , UfrmVacina
  , UFrmDeposito
  , UFrmAgente
  ;



{$R *.dfm}

procedure TfrmTelaInicial.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TfrmAGENTE, frmAGENTE)
end;

procedure TfrmTelaInicial.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmVacinas, frmVacinas);
end;

procedure TfrmTelaInicial.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFrmDeposito, FrmDeposito);
end;

procedure TfrmTelaInicial.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPacientes, frmPacientes);
end;

end.
