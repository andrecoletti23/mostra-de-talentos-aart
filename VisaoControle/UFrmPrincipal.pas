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
    lbNome: TLabel;
    lbCoren: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    procedure miSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declaration }
  public
    { Public declarations }
    procedure AtualizaUsuarioLogado;

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
    UDM
  , DB
  , UAgenteLogado
  , UAgente
  , UrepositorioAgente
  ;

{$R *.dfm}

procedure TFrmPrincipal.miSairClick(Sender: TObject);
begin
  Close;

end;

procedure TFrmPrincipal.AtualizaUsuarioLogado;
var
 i: integer;
 dia: string;
begin
  I := Trunc(Time * 24);
  if I < 6 then
     dia := 'Boa madrugada'
  else if I < 12 then
     dia :=('Bom dia')
  else if I < 18 then
     dia := ('Boa tarde')
  else
     dia :=('Boa Noite');

  lbNome.Caption :='Bem Vindo, ' + TAgenteLogado.Unico.UAgente.AGENTE_NOME ;
  lbCoren.Caption := TAgenteLogado.Unico.UAgente.AGENTE_COREN;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  sbPrincipal.Panels[0].Text :=
    'Banco de Dados: ' + dmEntra21.SQLConnection.Params.Values[CNT_DATA_BASE];

    AtualizaUsuarioLogado;
end;

end.
