unit UCadPessoa;

interface

uses
    UEntidade ;

type
  TCADPESSOA = class(TENTIDADE)
  public
    PESSOA_CODIGO : String;
    PESSOA_NOME  : String;
    PESSOA_NASCIMENTO : integer;
    PESSOA_SEXO : String;
    PESSOA_CPF : String;
    PESSOA_RG : integer;
    PESSOA_ESTADO : String;
    PESSOA_CIDADE : String;
    PESSOA_ENDERECO : String;
    PESSOA_TEL_FIXO : integer;
    PESSOA_CELULAR : integer;
    PESSOA_PAI : String;
    PESSOA_MAE : String;

    {constructor Create; override;
    destructor Destroy; override;}
  end;

const
  TBL_CAD_PESSOA        = 'CAD_PESSOA';
  FLD_PESSOA_CODIGO  = 'PESSOA_CODIGO';
  FLD_PESSOA_NOME  = 'PESSOA_NOME';
  FLD_PESSOA_NASCIMENTO = 'PESSOA_NASCIMENTO';
  FLD_PESSOA_SEXO = 'PESSOA_SEXO';
  FLD_PESSOA_CPF = 'PESSOA_CPF';
  FLD_PESSOA_RG = 'PESSOA_RG';
  FLD_PESSOA_ESTADO = 'PESSOA_ESTADO';
  FLD_PESSOA_CIDADE = 'PESSOA_CIDADE';
  FLD_PESSOA_ENDERECO = 'PESSOA_ENDERECO';
  FLD_PESSOA_TEL_FIXO = 'PESSOA_TEL_FIXO';
  FLD_PESSOA_CELULAR = 'PESSOA_CELULAR';
  FLD_PESSOA_PAI = 'PESSOA_PAI';
  FLD_PESSOA_MAE = 'PESSOA_MAE';

implementation

end.
