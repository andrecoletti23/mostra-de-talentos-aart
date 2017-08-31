unit UAgente;

interface

uses
    UEntidade;


type
  TAGENTE = class(TENTIDADE)
   public
   AGENTE_ID    : integer;
   AGENTE_NOME  : string;
   AGENTE_LOGIN : string;
   AGENTE_SENHA : string;
   AGENTE_EMAIL : string;
   end;

const
  TBL_AGENTE   = 'CAD_AGENTE';
  FDL_AGENTE_ID    = 'AGENTE_ID ';
  FDL_AGENTE_NOME  = 'AGENTE_NOME';
  FDL_AGENTE_LOGIN = 'AGENTE_LOGIN';
  FDL_AGENTE_SENHA = 'AGENTE_SENHA';
  FDL_AGENTE_EMAIL = 'AGENTE_EMAIL';


resourcestring
  STR_AGENTE ='Agente';

implementation



end.
