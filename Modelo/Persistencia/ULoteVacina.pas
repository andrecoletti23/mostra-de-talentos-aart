unit ULoteVacina;

interface

uses
  UEntidade;

type
  TLOTEVACINA= Class (TENTIDADE)
    public
      ID              : Integer;
      CODIGO          : Integer;
      VACINA_NOME     : String;
      LOTE_VACINA     : String;
      LABORATORIO     : String;
      VENCIMENTO_LOTE : String;

      {constructor create ; override;
      destructor destroy ; override; }
   end;

const
  TBL_LOTE_VACINA     = 'LOTE_VACINA';
  FLD_CODIGO          = 'DEP_CODIGO';
  FLD_VACINA_NOME     = 'DEP_VACINA_NOME';
  FLD_LOTE_VACINA     = 'DEP_LOTE_VACINA';
  FLD_LABORATORIO     = 'DEP_LABORATORIO';
  FLD_VENCIMENTO_LOTE = 'DEP_VENCIMENTO_LOTE';

RESOURCESTRING

STR_LOTE_VACINA = 'Deposito de Vacinas';

implementation
 uses
   SysUtils
  ,Dialogs
  ;

{ TDEPOSITOVACINA }

{constructor TDEPOSITOVACINA.create;
begin
  inherited;
    TBL_DEPOSITO_VACINA := TDEPOSITOVACINA.Create;
end;

destructor TDEPOSITOVACINA.destroy;
begin
  FreeAndNil(TDEPOSITOVACINA);
  inherited;}

end.
