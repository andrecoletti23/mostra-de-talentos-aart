unit UFrmTelaInicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids,UFrmPacientes, jpeg, ExtCtrls;

type
  TfrmTelaInicial = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
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
  , DB
  , UfrmVacina
  , UFrmDeposito
  , UFrmAgente
  ;



{$R *.dfm}

procedure TfrmTelaInicial.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPacientes, frmPacientes);
end;

procedure TfrmTelaInicial.Button2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmVacinas, frmVacinas);
end;

procedure TfrmTelaInicial.Button3Click(Sender: TObject);
begin
  Application.CreateForm(TFrmDeposito, FrmDeposito);
end;

procedure TfrmTelaInicial.Button4Click(Sender: TObject);
begin
   Application.CreateForm(TfrmAGENTE, frmAGENTE)
end;

procedure TfrmTelaInicial.Image1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmDeposito, FrmDeposito);
end;

procedure TfrmTelaInicial.Image2Click(Sender: TObject);
begin
   Application.CreateForm(TfrmAGENTE, frmAGENTE)
end;

procedure TfrmTelaInicial.Image3Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPacientes, frmPacientes);
end;

procedure TfrmTelaInicial.Image4Click(Sender: TObject);
begin
  Application.CreateForm(TfrmVacinas, frmVacinas);
end;

end.
