unit UProximaVacina;

interface

uses
    UEntidade
    ;

type
  TPROXIMAVACINA = class(TENTIDADE)
   public
     SUS_CODIGO       : String;
     NOME             : String;
     DATA_RETORNO     : TDate;
     VACINA_RETORNO   : String;
     DOSE             : String;

     //constructor create ; override;
     //destructor destroy ; override;
   end;

const
   TBL_PROX_VACINA      = 'PROX_VACINA';
   FLD_SUS_CODIGO       = 'SUS_CODIGO';
   FLD_NOME             = 'NOME';
   FLD_DATA_RETORNO     = 'DATA_RETORNO';
   FLD_VACINA_RETORNO   = 'VACINA_RETORNO';
   FLD_DOSE             = 'DOSE' ;

resourcestring

  STR_PROX_VACINA = 'Agendamento de retorno de pacientes';

implementation
uses
    SysUtils
  , Dialogs
  ;
{ TPROXIMAVACINA }

{constructor TPROXIMAVACINA.create;
begin
  inherited;
  SUS_CODIGO := TPACIENTE.Create;
end;

destructor TPROXIMAVACINA.destroy;
begin
  FREEANDNIL(SUS_CODIGO);
  inherited;
end; }

end.
