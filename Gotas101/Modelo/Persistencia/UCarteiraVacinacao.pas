unit UCarteiraVacinacao;

interface

uses
    UEntidade
  , UCoren
  , ULoteVacina
  ;

type
  TCARTEIRA_VACINACAO = class(TENTIDADE)
  public
  CAR_COD_VACINACAO: String;
	CAR_NOME: String;
	CAR_VACINA: String;
	CAR_DOSE: Integer;
	CAR_DATA: String;
	CAR_RESPONSAVEL: String;
	CAR_COD_COREN: TCOREN;
	CAR_COD_LOTE: TLOTEVACINA;
	CAR_LOTE_VENCIMENTO: TLOTEVACINA;


    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_CARTEIRA_VACINACAO    = 'CATEIRA_VACINACAO';
  FLD_COD_VACINACAO         = 'CAR_COD_VACINACAO';
  FLD_NOME                  = 'CAR_NOME';
  FLD_VACINA                = 'CAR_VACINA';
  FLD_DOSE                  = 'CAR_DOSE';
  FLD_DATA                  = 'CAR_DATA';
  FLD_RESPONSAVEL           = 'CAR_RESPONSAVEL';
  FLD_COD_COREN             = 'CAR_COD_COREN';
  FLD_COD_LOTE              = 'CAR_COD_LOTE';
  FLD_LOTE_VENCIMENTO       = 'CAR_LOTE_VENCIMENTO';

implementation

uses
    SysUtils
  , Dialogs
  ;

{ TCARTEIRA_VACINACAO }

constructor TCARTEIRA_VACINACAO.Create;
begin
  inherited;
  CAR_COD_COREN       := TCOREN.Create;
  CAR_LOTE_VENCIMENTO := TLOTEVACINA.Create;
  CAR_COD_LOTE        := TLOTEVACINA.Create;
end;

destructor TCARTEIRA_VACINACAO.Destroy;
begin
  FreeAndNil(CAR_COD_COREN);
  FreeAndNil(CAR_COD_LOTE);
  FreeAndNil(CAR_LOTE_VENCIMENTO);
  inherited;
end;

end.
