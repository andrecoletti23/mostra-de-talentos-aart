unit UAgente;

interface

uses
    UEntidade;


type
  TAGENTE = class(TENTIDADE)
   public
     ID                           : Integer;
     AGENTE_NOME                  : String;
     LOGIN                        : String;
     SENHA                        : String;
     AGENTE_EMAIL                 : String;
     AGENTE_COREN                 : String;
     AGENTE_ESPECIFICACAO         : String;
     AGENTE_DATA_NASC             : TDate;
     AGENTE_TURNO                 : String;
     AGENTE_TELEFONE              : String;
   end;

const
    TBL_AGENTE                  = 'AGENTE';
    FLD_ID                      = 'ID';
    FLD_AGENTE_NOME             = 'AGENTE_NOME';
    FLD_LOGIN                   = 'LOGIN';
    FLD_SENHA                   = 'SENHA';
    FLD_AGENTE_EMAIL            = 'AGENTE_EMAIL';
    FLD_AGENTE_COREN            = 'AGENTE_COREN';
    FLD_AGENTE_ESPECIFICACAO    = 'AGENTE_ESPECIFICACAO';
    FLD_AGENTE_DATA_NASC        = 'AGENTE_DATA_NASC';
    FLD_AGENTE_TURNO            = 'AGENTE_TURNO';
    FLD_AGENTE_TELEFONE         = 'AGENTE_TELEFONE';

  //ARRUMAR DTO EXCLUIR TABELA COREN
  //MUDAR UREPOSITORIOCOREN PARA UREPOSITORIOAGENTE
  //A PRINCIPIO TUDO OK !!!!!!!
resourcestring
  STR_AGENTE ='Agente De Saúde';

implementation



end.
