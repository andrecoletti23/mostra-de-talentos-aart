unit UFrmTelaInicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids,UFrmPacientes;

type
  TfrmTelaInicial = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  ;



{$R *.dfm}

procedure TfrmTelaInicial.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPacientes, frmPacientes);
end;

procedure TfrmTelaInicial.Button2Click(Sender: TObject);
begin
  //Application.CreateForm(TfrmPacientes, frmPacientes);
end;

end.
