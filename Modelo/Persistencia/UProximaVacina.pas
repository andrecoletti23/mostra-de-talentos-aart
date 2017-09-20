unit UProximaVacina;

interface

uses
    UEntidade;

type
  TPROXIMAVACINA = class(TENTIDADE)
   public
     ID               : Integer;
     SUS_CODIGO       : String; //CRIAR UM REFERENCE NA TABELA TALVEZ
     NOME             : String;
     DATA_RETORNO     : TDate;
     VACINA_RETORNO   : String;
     DOSE_RETORNO     : String;
   end;

const
   TBL_PROX_VACINA      = 'PROX_VACINA';
   FLD_ID               = 'ID';
   FLD_SUS_CODIGO       = 'SUS_COGIDO';
   FLD_NOME             = 'NOME';
   FLD_DATA_RETORNO     = 'DATA_RETORNO';
   FLD_VACINA_RETORNO   = 'VACINA_RETORNO';
   FLD_DOSE_RETORNO     = 'DOSE_RETORNO';

resourcestring

  STR_PROX_VACINA = 'Agendamento de retorno de pacientes';

implementation

end.
