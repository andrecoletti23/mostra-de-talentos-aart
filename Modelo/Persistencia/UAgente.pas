unit UAgente;

interface

uses
    UEntidade;


type
  TAGENTE = class(TENTIDADE)
   public
     ID           : Integer;
     AGENTE_ID    : Integer;
     AGENTE_NOME  : String;
     AGENTE_LOGIN : String;
     AGENTE_SENHA : String;
     AGENTE_EMAIL : String;
   //ADD CAMPO TURNO NO DB
   end;

const
  TBL_AGENTE       = 'CAD_AGENTE';
  FLD_ID           = 'ID';
  FLD_AGENTE_ID    = 'AGENTE_ID ';
  FLD_AGENTE_NOME  = 'AGENTE_NOME';
  FLD_AGENTE_LOGIN = 'AGENTE_LOGIN';
  FLD_AGENTE_SENHA = 'AGENTE_SENHA';
  FLD_AGENTE_EMAIL = 'AGENTE_EMAIL';

  //COREN INCLUIR AQUI E ADD CAMPO TELEFONE CONTATO
  //ARRUMAR DTO EXCLUIR TABELA COREN
  //MUDAR UREPOSITORIOCOREN PARA UREPOSITORIOAGENTE
resourcestring
  STR_AGENTE ='Agente De Saúde';

implementation



end.
