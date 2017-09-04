unit UCoren;

interface

uses
    UEntidade;


type
  TCOREN = class(TENTIDADE)
   public
   ID            : Integer;
   COREN         : String;
   NOME          : String;
   ESPECIFICACAO : String;
   DATA_NASC     : TDate;

   end;

const
  TBL_COREN          = 'COREN';
  FLD_ID             = 'ID' ;
  FLD_COREN          = 'COREN';
  FLD_NOME           = 'NOME';
  FLD_ESPECIFICACAO  = 'ESPECIFICACAO';
  FLD_DATA_NASC      = 'DATA_NASC';

  //JUNTAR COM TABELA DE AGENTE
  //DELETAR TABELA

resourcestring
  STR_COREN = 'Certificação do Agente de Saúde';

implementation

end.
