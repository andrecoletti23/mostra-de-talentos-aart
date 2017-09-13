unit UFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmLogin = class(TForm)
    edLogin: TEdit;
    edSenha: TEdit;
    btnEntrar: TButton;
    btnCancelar: TButton;
    procedure btnEntrarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation
uses
    UAgenteLogado
  , UDialogo
  ;

{$R *.dfm}



procedure TFrmLogin.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  CloseModal;
end;

procedure TFrmLogin.btnEntrarClick(Sender: TObject);
begin
  try
    TAgenteLogado.Unico.RealizaLogin(edLogin.Text, edSenha.Text);

    ModalResult := mrYes;
    CloseModal;
  except
    on E: Exception do
      TDialogo.Excecao(E);
  end;
end;

{procedure TFrmLogin.edSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    btnEntrar.Click;
end; }

end.

