unit UAgenteLogado;

interface

uses
    UAgente
  , URepositorioAgente
  ;

type
  TAgenteLogado = class
  private
    FAGENTE: TAGENTE;
    FRepositorioAgente: TRepositorioAgente;

  public
    constructor Create;
    destructor Destroy; override;

    procedure RealizaLogin(const csLogin: String;const csSenha: String);
    procedure Logoff;

    function UAgente: TAGENTE;

    class function Unico: TAgenteLogado;
  end;


implementation

uses
    SysUtils
  , UUtilitarios
  , IdHashMessageDigest
  ;

var
  AgenteLogado: TAgenteLogado = nil;

{ TUsuarioLogado }

constructor TAgenteLogado.Create;
begin
  FRepositorioAgente := TRepositorioAgente.Create;
end;

destructor TAgenteLogado.Destroy;
begin
  FreeAndNil(FRepositorioAgente);
  inherited;
end;

procedure TAgenteLogado.Logoff;
begin
  if Assigned(FAGENTE) then
    FreeAndNil(FAGENTE);
end;

procedure TAgenteLogado.RealizaLogin(const csLogin, csSenha: String);
var
  HashMessageDigest5: TIdHashMessageDigest5;
  SenhaCriptografada: String;
begin
  FAGENTE := FRepositorioAGENTE.RetornaPeloLogin(csLogin);

  if not Assigned(FAGENTE) then
    raise EValidacaoNegocio.Create('Usuário ou Senha são inválidos');

  HashMessageDigest5 := TIdHashMessageDigest5.Create;
  try
    SenhaCriptografada := HashMessageDigest5.HashStringAsHex(csSenha);
    if FAGENTE.AGENTE_SENHA <> SenhaCriptografada then
      raise EValidacaoNegocio.Create('Usuário ou Senha são inválidos');
  finally
    FreeAndNil(HashMessageDigest5);
  end;
end;

class function TAgenteLogado.Unico: TAgenteLogado;
begin
  if not Assigned(AgenteLogado) then
    AgenteLogado := TAgenteLogado.Create;

  Result := AgenteLogado;
end;

function TAgenteLogado.UAgente: TAgente;
begin
  Result := FAgente;
end;

end.

