unit UGenero;

interface

uses
    UEntidade
  ;

type
  TGENERO = class(TENTIDADE)
  public
   CODIGO: Integer;
   DESCRICAO: String;
  end;

const
  TBL_GENERO = 'GENERO';
  FLD_CODIGO = 'CODIGO';
  FLD_DESCRICAO = 'DESCRICAO';
implementation

{ TGENERO }

end.
