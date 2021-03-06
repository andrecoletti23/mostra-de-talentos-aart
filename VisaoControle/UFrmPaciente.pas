unit UFrmPaciente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, StdCtrls, ExtCtrls
  , UPACIENTE
  , UUtilitarios
  , URegraCRUDPaciente, Mask
  ;


type
  TfrmCadPaciente = class(TFrmCRUD)
    gbCadastro: TGroupBox;
    edCodSus: TLabeledEdit;
    edNome: TLabeledEdit;
    edEndereco: TLabeledEdit;
    edRG: TLabeledEdit;
    edEstado: TLabeledEdit;
    edFixo: TLabeledEdit;
    edCel: TLabeledEdit;
    edCidade: TLabeledEdit;
    edPai: TLabeledEdit;
    edMae: TLabeledEdit;
    edSexo: TComboBox;
    Label1: TLabel;
    edCPF: TMaskEdit;
    Label2: TLabel;
    edNascimento: TMaskEdit;
    Label3: TLabel;
protected
    FPACIENTE: TPACIENTE;

    FregraCRUDPacienteS: TRegraCRUDPacienteS;

    procedure Inicializa; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  frmPaciente: TfrmCadPaciente;

implementation
 uses
    UOpcaoPesquisa
  , UEntidade
  , UFrmPesquisa
  , UDialogo;
{$R *.dfm}

{ TfrmPaciente }

procedure TfrmCadPaciente.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbCadastro.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TfrmCadPaciente.Inicializa;
begin
  inherited;
  DefineEntidade(@FPACIENTE, TPACIENTE);
  DefineRegraCRUD(@FregraCRUDPACIENTES, TRegraCRUDPACIENTES);

    AdicionaOpcaoPesquisa(TOpcaoPesquisa
    .Create
    .AdicionaFiltro(FLD_CODIGO_SUS)
    .AdicionaFiltro(FLD_NOME)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa(STR_PACIENTE)
    .DefineVisao(TBL_PACIENTE));

end;

procedure TfrmCadPaciente.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edCodSus.SetFocus;
end;

procedure TfrmCadPaciente.PreencheEntidade;
begin
  inherited;
    {FPACIENTE.PESSOA_CODIGO       := edCodSus.Text  ;
    FPACIENTE.PESSOA_NOME         := edNome.Text ;
    FPACIENTE.PESSOA_NASCIMENTO   := StrToInt(edNascimento.Text)  ;
    FPACIENTE.PESSOA_SEXO         := edSexo.Text  ;
    FPACIENTE.PESSOA_ENDERECO     := edEndereco.Text  ;
    FPACIENTE.PESSOA_RG           := StrToInt(edRG.Text)  ;
    FPACIENTE.PESSOA_CPF          := edCPF.Text  ;
    FPACIENTE.PESSOA_ESTADO       := edEstado.Text ;
    FPACIENTE.PESSOA_TEL_FIXO     := StrToInt(edFixo.Text) ;
    FPACIENTE.PESSOA_CELULAR      := StrToInt(edCel.Text) ;
    FPACIENTE.PESSOA_CIDADE       := edCidade.Text ;
    FPACIENTE.PESSOA_PAI          := edPai.Text ;
    FPACIENTE.PESSOA_MAE          := edMae.Text ;  }
end;

procedure TfrmCadPaciente.PreencheFormulario;
begin
  inherited;
    {edCodSus.Text     := FPACIENTE.PESSOA_CODIGO;
    edNome.Text       := FPACIENTE.PESSOA_NOME;
    edNascimento.Text := IntToStr(FPACIENTE.PESSOA_NASCIMENTO);
    edSexo.Text       := FPACIENTE.PESSOA_SEXO;
    edEndereco.Text   := FPACIENTE.PESSOA_ENDERECO;
    edRG.Text         := IntToStr(FPACIENTE.PESSOA_RG);
    edCPF.Text        := FPACIENTE.PESSOA_CPF;
    edEstado.Text     := FPACIENTE.PESSOA_ESTADO;
    edFixo.Text       := IntToStr(FPACIENTE.PESSOA_TEL_FIXO);
    edCel.Text        := IntToStr(FPACIENTE.PESSOA_CELULAR);
    edCidade.Text     := FPACIENTE.PESSOA_CIDADE;
    edPai.Text        := FPACIENTE.PESSOA_PAI;
    edMae.Text        := FPACIENTE.PESSOA_MAE; }
end;

end.
