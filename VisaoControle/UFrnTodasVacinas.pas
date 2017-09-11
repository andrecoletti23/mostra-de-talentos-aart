unit UFrnTodasVacinas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Mask, ExtCtrls, Menus, Buttons, StdCtrls;

type
  TfrmTodasVacinas = class(TFrmCRUD)
    GroupBox1: TGroupBox;
    edNome: TLabeledEdit;
    edLogin: TLabeledEdit;
    edSenha: TLabeledEdit;
    edEmail: TLabeledEdit;
    edCoren: TLabeledEdit;
    edEspec: TLabeledEdit;
    edTurno: TLabeledEdit;
    edContato: TLabeledEdit;
    edDataNasc: TMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTodasVacinas: TfrmTodasVacinas;

implementation

{$R *.dfm}

end.
