unit UFrmAgente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Mask, ExtCtrls, Menus, Buttons, StdCtrls
  , URegraCRUDAgente
  , URepositorioAgente
  , UAgente
  , UUtilitarios;

type
  TfrmAgente = class(TFrmCRUD)
    gbUsuarios: TGroupBox;
    edNome: TLabeledEdit;
    edLogin: TLabeledEdit;
    edSenha: TLabeledEdit;
    edEmail: TLabeledEdit;
    edCoren: TLabeledEdit;
    edEspec: TLabeledEdit;
    edTurno: TLabeledEdit;
    edContato: TLabeledEdit;
    edDataNasc: TMaskEdit;
protected
    FAgente: TAgente;

    FRegraCRUDAgente: TRegraCRUDAgente;

    procedure Inicializa; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  frmAgente: TfrmAgente;

implementation
uses
    UOpcaoPesquisa
  , UEntidade
  , UFrmPesquisa
  , UDialogo
  , IdHashMessageDigest
  ;
var
  SenhaHash : String;
  HashMessageDigest5: TIdHashMessageDigest5;
{$R *.dfm}

{ TfrmTodasVacinas }

procedure TfrmAgente.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
    gbUsuarios.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TfrmAgente.Inicializa;
begin
  inherited;
    DefineEntidade(@FAGENTE, TAGENTE);
    DefineRegraCRUD(@FRegraCRUDAGENTE, TRegraCRUDAGENTE);

      AdicionaOpcaoPesquisa(TOpcaoPesquisa
      .Create
      .AdicionaFiltro(FLD_AGENTE_NOME)
      .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
      .DefineNomePesquisa(STR_AGENTE)
      .DefineVisao(TBL_AGENTE));
end;

procedure TfrmAgente.PosicionaCursorPrimeiroCampo;
begin
  inherited;
     edNome.SetFocus;
end;

procedure TfrmAgente.PreencheEntidade;
begin
  inherited;
   FAGENTE.AGENTE_NOME               := edNome.Text;
   FAGENTE.LOGIN                     := edLogin.Text;
   //FAGENTE.SENHA                     := edSenha.Text;
   HashMessageDigest5 := TIdHashMessageDigest5.Create;
   SenhaHash := HashMessageDigest5.HashStringAsHex(edSenha.Text);
   FAGENTE.SENHA := SenhaHash ;
   FAGENTE.AGENTE_EMAIL              := edEmail.Text;
   FAGENTE.AGENTE_COREN              := edCoren.Text;
   FAGENTE.AGENTE_ESPECIFICACAO      := edEspec.Text;
   FAGENTE.AGENTE_DATA_NASC          := StrToDate(edDataNasc.Text);
   FAGENTE.AGENTE_TURNO              := edTurno.Text;
   FAGENTE.AGENTE_TELEFONE           := edContato.Text;
end;

procedure TfrmAgente.PreencheFormulario;
begin
  inherited;
  edNome.Text       := FAGENTE.AGENTE_NOME ;
  edLogin.Text      := FAGENTE.LOGIN ;
  edSenha.Text      := FAGENTE.SENHA ;
  edEmail.Text      := FAGENTE.AGENTE_EMAIL ;
  edCoren.Text      := FAGENTE.AGENTE_COREN ;
  edEspec.Text      := FAGENTE.AGENTE_ESPECIFICACAO ;
  edDataNasc.Text   := DateToStr(FAGENTE.AGENTE_DATA_NASC) ;
  edTurno.Text      := FAGENTE.AGENTE_TURNO  ;
  edContato.Text    := FAGENTE.AGENTE_TELEFONE  ;
end;

end.
