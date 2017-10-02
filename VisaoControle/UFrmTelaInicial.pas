unit UFrmTelaInicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids,UFrmPacientes, Buttons, DBXFirebird, FMTBcd,
<<<<<<< HEAD
  DB, Provider, DBClient, SqlExpr;
=======
  DB, Provider, DBClient, SqlExpr, ExtCtrls;
>>>>>>> Final

type
  TfrmTelaInicial = class(TForm)
    DBGrid1: TDBGrid;
<<<<<<< HEAD
    Label1: TLabel;
=======
    lbProx: TLabel;
>>>>>>> Final
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SQLConInicio: TSQLConnection;
    tbProxInicio: TSQLTable;
    ClientDataSetInicio: TClientDataSet;
    DataSetPInicio: TDataSetProvider;
    DataSource1: TDataSource;
<<<<<<< HEAD
=======
    Button1: TButton;
    pnlLinks: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
>>>>>>> Final
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
<<<<<<< HEAD
=======
    procedure Button1Click(Sender: TObject);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label3MouseLeave(Sender: TObject);
>>>>>>> Final
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
  , UFrmAgendaVacina
  ;



{$R *.dfm}

procedure TfrmTelaInicial.SpeedButton1Click(Sender: TObject);
begin
<<<<<<< HEAD
   Application.CreateForm(TfrmAGENTE, frmAGENTE)
end;

=======
  Application.CreateForm(TFrmAgendaVacina, FrmAgendaVacina);
end;

procedure TfrmTelaInicial.Label1MouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clWhite;
  TLabel(Sender).Font.Style := [];
  Cursor := crDefault;
end;

procedure TfrmTelaInicial.Label1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  TLabel(Sender).Font.Color := clBlue;
  TLabel(Sender).Font.Style := [fsUnderline];
  Cursor := crHandPoint;
end;

procedure TfrmTelaInicial.Label2MouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clWhite;
  TLabel(Sender).Font.Style := [];
  Cursor := crDefault;
end;

procedure TfrmTelaInicial.Label2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  TLabel(Sender).Font.Color := clBlue;
  TLabel(Sender).Font.Style := [fsUnderline];
  Cursor := crHandPoint;
end;

procedure TfrmTelaInicial.Label3MouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clWhite;
  TLabel(Sender).Font.Style := [];
  Cursor := crDefault;
end;

procedure TfrmTelaInicial.Label3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  TLabel(Sender).Font.Color := clBlue;
  TLabel(Sender).Font.Style := [fsUnderline];
  Cursor := crHandPoint;
end;

procedure TfrmTelaInicial.SpeedButton1Click(Sender: TObject);
begin
   Application.CreateForm(TfrmAGENTE, frmAGENTE)
end;

>>>>>>> Final
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
