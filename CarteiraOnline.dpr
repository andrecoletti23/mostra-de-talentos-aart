program CarteiraOnline;

uses
  Forms,
  UFrmPrincipal in 'VisaoControle\UFrmPrincipal.pas' {FrmPrincipal},
  UFrmCRUD in 'VisaoControle\UFrmCRUD.pas' {FrmCRUD},
  UUtilitarios in 'Modelo\UUtilitarios.pas',
  UMensagens in 'Modelo\UMensagens.pas',
  UConstantes in 'Modelo\UConstantes.pas',
  UDialogo in 'Modelo\UDialogo.pas',
  UOpcaoPesquisa in 'Modelo\UOpcaoPesquisa.pas',
  UDM in 'Modelo\Persistencia\UDM.pas' {dmProway: TDataModule},
  UEntidade in 'Modelo\Persistencia\UEntidade.pas',
  URepositorio in 'Modelo\Persistencia\URepositorio.pas',
  URepositorioDB in 'Modelo\Persistencia\URepositorioDB.pas',
  URegraCRUD in 'Modelo\Regra\URegraCRUD.pas',
  ULoteVacina in 'Modelo\Persistencia\ULoteVacina.pas',
  UAgente in 'Modelo\Persistencia\UAgente.pas',
  UCoren in 'Modelo\Persistencia\UCoren.pas',
  UGenero in 'Modelo\Persistencia\UGenero.pas',
  UVacina in 'Modelo\Persistencia\UVacina.pas',
  UCarteiraVacinacao in 'Modelo\Persistencia\UCarteiraVacinacao.pas',
  UFaixaEtaria in 'Modelo\Persistencia\UFaixaEtaria.pas',
  URepositorioPaciente in 'Modelo\Persistencia\URepositorioPaciente.pas',
  URegraCRUDPaciente in 'Modelo\Regra\URegraCRUDPaciente.pas',
  UFrmTelaInicial in 'VisaoControle\UFrmTelaInicial.pas' {frmTelaInicial},
  UFrmPacientes in 'VisaoControle\UFrmPacientes.pas' {frmPacientes},
  UPaciente in 'Modelo\Persistencia\UPaciente.pas',
  URepositorioCarteiraVacinacao in 'Modelo\Persistencia\URepositorioCarteiraVacinacao.pas',
  URepositorioAgente in 'Modelo\Persistencia\URepositorioAgente.pas',
  UCidade in 'Modelo\Persistencia\UCidade.pas',
  UEstado in 'Modelo\Persistencia\UEstado.pas',
  URepositorioLoteVacina in 'Modelo\Persistencia\URepositorioLoteVacina.pas',
  UfrmVacina in 'VisaoControle\UfrmVacina.pas' {frmVacinas},
  URegraCRUDCarteiraVacinacao in 'Modelo\Regra\URegraCRUDCarteiraVacinacao.pas';

//URegraCRUDCadAgente in 'Modelo\Regra\URegraCRUDCadAgente.pas',
  //URepositorioAgente in 'Modelo\Persistencia\URepositorioAgente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TdmEntra21, dmEntra21);
  Application.CreateForm(TfrmTelaInicial, frmTelaInicial);
  Application.Run;
end.
