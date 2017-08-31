unit UDepVacina;

interface

uses
  UEntidade;

type
  TDEPOSITOVACINA = Class (TENTIDADE)
    public
      ID         : Integer;
      DEP_CODIGO : Integer;
      DEP_VACINA_NOME : String;
      DEP_LOTE_VACINA : String;
      DEP_LABORATORIO : String;
      DEP_VENCIMENTO_LOTE : String;

      {constructor create ; override;
      destructor destroy ; override; }
   end;

const
  TBL_DEPOSITO_VACINA     = 'DEPOSITO_VACINA';
  FLD_DEP_CODIGO          = 'DEP_CODIGO';
  FLD_DEP_VACINA_NOME     = 'DEP_VACINA_NOME';
  FLD_DEP_LOTE_VACINA     = 'DEP_LOTE_VACINA';
  FLD_DEP_LABORATORIO     = 'DEP_LABORATORIO';
  FLD_DEP_VENCIMENTO_LOTE = 'DEP_VENCIMENTO_LOTE';



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
