unit UEstado;

interface

uses
  UEntidade;

 type
  TESTADO= Class (TENTIDADE)
    public
      ID              : Integer;
      CODIGOUF        : Integer;
      NOME            : String;
      UF              : String;
      REGIAO          : Integer;
  end;

const
  TBL_ESTADO            = 'ESTADO';
  FLD_ESTADO_CODIGOUF   = 'CODIGO_UF';
  FLD_ESTADO_NOME       = 'NOME';
  FLD_ESTADO_UF         = 'UF';
  FLD_ESTADO_REGIAO     = 'REGIAO';

resourcestring
  STR_CIDADE = 'Cidade';

implementation
end.
