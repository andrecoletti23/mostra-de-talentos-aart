unit UFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus
  , StdCtrls, ComCtrls, Grids, DBGrids, ExtCtrls, UFrmPacientes, Buttons, ToolWin,
  jpeg
  ;

type
  TFrmPrincipal = class(TForm)
    sbPrincipal: TStatusBar;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    procedure miSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declaration }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
    UDM
  , DB
  ;

{$R *.dfm}

procedure TFrmPrincipal.miSairClick(Sender: TObject);
begin
  Close;

end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  sbPrincipal.Panels[0].Text :=
    'Banco de Dados: ' + dmEntra21.SQLConnection.Params.Values[CNT_DATA_BASE];
end;

end.
