unit UCidade;

interface

uses
  UEntidade;

 type
  TCIDADE= Class (TENTIDADE)
    public
      CODIGO          : Integer;
      NOME            : String;
      UF              : String;
  end;

const
  TBL_CIDADE          = 'CIDADE';
  FLD_CIDADE_CODIGO   = 'CODIGO';
  FLD_CIDADE_NOME     = 'NOME';
  FLD_CIDADE_UF       = 'UF';

resourcestring
  STR_CIDADE = 'Cidade';

implementation
end.
