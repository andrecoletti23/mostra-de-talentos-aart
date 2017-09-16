unit UFrmPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, ExtCtrls, Menus, Buttons, StdCtrls, Mask
  , UPaciente
  , UUtilitarios
  , URegraCRUDPaciente

  ;

type
  TfrmPacientes = class(TFrmCRUD)
    gbIdentificacao: TGroupBox;
    gbLogradouro: TGroupBox;
    gbAdicionais: TGroupBox;
    edNome: TLabeledEdit;
    edMae: TLabeledEdit;
    edEmissor: TLabeledEdit;
    cbSexo: TComboBox;
    lbSexo: TLabel;
    edNascimento: TMaskEdit;
    lbNasci: TLabel;
    edCPF: TMaskEdit;
    lbCPF: TLabel;
    edRG: TMaskEdit;
    lbRG: TLabel;
    edEmisao: TMaskEdit;
    lbEmisao: TLabel;
    cbEstadoCivil: TComboBox;
    lbEstadoCivil: TLabel;
    edPai: TLabeledEdit;
    edEndereco: TLabeledEdit;
    cbUF: TComboBox;
    lbUF: TLabel;
    cbCidade: TComboBox;
    lbCidade: TLabel;
    edBairro: TLabeledEdit;
    edReferecia: TLabeledEdit;
    edRecado: TLabeledEdit;
    lbCartaoSUS: TLabel;
    edCodigoSUS: TMaskEdit;
    edTelResi: TMaskEdit;
    Label1: TLabel;
    edCelular: TMaskEdit;
    edTelComer: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    cbSangue: TComboBox;
    Label4: TLabel;
protected
    FPACIENTE: TPACIENTE;

    FRegraCRUDPaciente: TRegraCRUDPaciente;

    procedure Inicializa; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  frmPacientes: TfrmPacientes;

implementation
 uses
    UOpcaoPesquisa
  , UEntidade
  , UFrmPesquisa
  , UDialogo;
 {$R *.DFM}
{ TfrmPacientes }

procedure TfrmPacientes.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  gbIdentificacao.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
  gbLogradouro.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
  gbAdicionais.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TfrmPacientes.Inicializa;
begin
  inherited;
  DefineEntidade(@FPACIENTE, TPACIENTE);
  DefineRegraCRUD(@FregraCRUDPACIENTE, TRegraCRUDPACIENTE);

    AdicionaOpcaoPesquisa(TOpcaoPesquisa
    .Create
    .AdicionaFiltro(FLD_CODIGO_SUS)
    .AdicionaFiltro(FLD_NOME)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa(STR_PACIENTE)
    .DefineVisao(TBL_PACIENTE));

end;

procedure TfrmPacientes.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNome.SetFocus;
end;

procedure TfrmPacientes.PreencheEntidade;
begin
  inherited;
    FPACIENTE.CODIGO_SUS    := edCodigoSUS.Text;
    FPACIENTE.NOME          := edNome.Text;
    FPACIENTE.NASCIMENTO    := StrToDate(edNascimento.Text);
    FPACIENTE.SEXO          := cbSexo.Text;
    FPACIENTE.CPF           := edCPF.Text;
    FPACIENTE.RG            := StrToInt(edRG.Text);
    FPACIENTE.ENDERECO      := edEndereco.Text;
    FPACIENTE.TEL_FIXO      := edTelResi.Text ;
    FPACIENTE.CELULAR       := edCelular.Text ;
    FPACIENTE.PAI           := edPai.Text ;
    FPACIENTE.MAE           := edMae.Text ;
    FPACIENTE.ESTADO_CIVIL  := cbEstadoCivil.Text ;
    FPACIENTE.ORGAO_EMISSOR := edEmissor.Text ;
    FPACIENTE.DATA_EMISSAO  := StrToDate(edEmisao.Text) ;
    FPACIENTE.UF            := cbUF.Text ;
    FPACIENTE.BAIRRO        := edBairro.Text ;
    FPACIENTE.REFERENCIA    := edReferecia.Text ;
    FPACIENTE.TEL_COMERCIAL := edTelComer.Text ;
    FPACIENTE.TIPO_SANGUE   := cbSangue.Text ;
    FPACIENTE.PESSOA_RECADO := edRecado.Text ;
    FPACIENTE.CIDADE        := cbCidade.Text ;
    end;

procedure TfrmPacientes.PreencheFormulario;
begin
  inherited;
    edCodigoSUS.Text      := FPACIENTE.CODIGO_SUS ;
    edNome.Text           := FPACIENTE.NOME ;
    edNascimento.Text     := DateToStr(FPACIENTE.NASCIMENTO);
    cbSexo.Text           := FPACIENTE.SEXO  ;
    edCPF.Text            := FPACIENTE.CPF  ;
    edRG.Text             := IntToStr(FPACIENTE.RG) ;
    edEndereco.Text       := FPACIENTE.ENDERECO ;
    edTelResi.Text        := FPACIENTE.TEL_FIXO ;
    edCelular.Text        := FPACIENTE.CELULAR  ;
    edPai.Text            := FPACIENTE.PAI  ;
    edMae.Text            := FPACIENTE.MAE  ;
    cbEstadoCivil.Text    := FPACIENTE.ESTADO_CIVIL ;
    edEmissor.Text        := FPACIENTE.ORGAO_EMISSOR ;
    edEmisao.Text         := DateToStr(FPACIENTE.DATA_EMISSAO) ;
    cbUF.Text             := FPACIENTE.UF ;
    edBairro.Text         := FPACIENTE.BAIRRO ;
    edReferecia.Text      := FPACIENTE.REFERENCIA ;
    edTelComer.Text       := FPACIENTE.TEL_COMERCIAL ;
    cbSangue.Text         := FPACIENTE.TIPO_SANGUE  ;
    edRecado.Text         := FPACIENTE.PESSOA_RECADO ;
    cbCidade.Text         := FPACIENTE.CIDADE ;
end;

end.
