unit UTodasVacinas;

interface

uses
    UEntidade;

type
  TTODASVACINAS = class(TENTIDADE)
   public
     ID             : Integer;
     NOME_VACINA    : String;
     DESCRICAO      : String;
     IDADE_INDICADA : String;
     TOTAL_DOSES    : String;
     RESTRICAO      : String;
   end;

const
   TBL_TODAS_VACINAS    = 'TODAS_VACINAS';
   FLD_ID               = 'ID';
   FLD_NOME_VACINA      = 'SUS_COGIDO';
   FLD_DESCRICAO        = 'DESCRICAO';
   FLD_IDADE_INDICADA   = 'NOME';
   FLD_TOTAL_DOSES      = 'DATA_RETORNO';
   FLD_RESTRICAO        = 'VACINA_RETORNO';

resourcestring

 STR_TODAS_VACINAS  = 'Todas as vacinas';

implementation

end.
