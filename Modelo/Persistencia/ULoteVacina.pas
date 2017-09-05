unit ULoteVacina;

interface

uses
  UEntidade;

type
  TLOTEVACINA= Class (TENTIDADE)
    public
      ID                 : Integer;
      VACINA_NOME        : String;
      LOTE               : String;
      LABORATORIO        : String;
      VENCIMENTO_LOTE    : TDate;
      QUANTIDADE_ESTOQUE : STRING

      {constructor create ; override;
      destructor destroy ; override; }
   end;

const
  TBL_LOTE_VACINA        = 'LOTE_VACINA';
  FLD_VACINA_NOME        = 'VACINA_NOME';
  FLD_LOTE_VACINA        = 'LOTE';
  FLD_LABORATORIO        = 'LABORATORIO';
  FLD_VENCIMENTO_LOTE    = 'VENCIMENTO_LOTE';
  FLD_QUANTIDADE_ESTOQUE = 'QUANTIDADE_ESTOQUE';

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
