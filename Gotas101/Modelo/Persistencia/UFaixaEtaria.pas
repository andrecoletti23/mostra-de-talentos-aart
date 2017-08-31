unit UFaixaEtaria;

interface

uses
    UEntidade
  ;

type
  TFAIXA_ETARIA = class(TENTIDADE)
  public
   ID          : Integer;
   CODIGO      : Integer;
   DESCRICAO   : String;
  end;

const
  TBL_FAIXA_ETARIA    = 'FAIXA_ETARIA';
  FLD_CODIGO          = 'CODIGO';
  FLD_DESCRICAO       = 'DESCRICAO';
implementation

{ TFAIXA_ETARIA }

end.
