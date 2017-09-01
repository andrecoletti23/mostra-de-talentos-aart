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
  COD_VACINACAO: String;
	NOME: String;
	VACINA: String;
	DOSE: Integer;
	DATA: String;
	RESPONSAVEL: String;
	COD_COREN: String; //TCOREN;
	COD_LOTE: String; //TLOTEVACINA;
	LOTE_VENCIMENTO: String; //TLOTEVACINA;


    //constructor Create; override;
   // destructor Destroy; override;
  end;

const
  TBL_CARTEIRA_VACINACAO        = 'CATEIRA_VACINACAO';
  FLD_CAR_COD_VACINACAO         = 'COD_VACINACAO';
  FLD_CAR_NOME                  = 'NOME';
  FLD_CAR_VACINA                = 'VACINA';
  FLD_CAR_DOSE                  = 'DOSE';
  FLD_CAR_DATA                  = 'DATA';
  FLD_CAR_RESPONSAVEL           = 'RESPONSAVEL';
  FLD_CAR_COD_COREN             = 'COD_COREN';
  FLD_CAR_COD_LOTE              = 'COD_LOTE';
  FLD_CAR_LOTE_VENCIMENTO       = 'LOTE_VENCIMENTO';

resourcestring
  STR_CARTEIRA_VACINACAO = 'Carteira de Vacinação Online';

implementation

uses
    SysUtils
  , Dialogs
  ;

{ TCARTEIRA_VACINACAO }

{constructor TCARTEIRA_VACINACAO.Create;
begin
  inherited;
  COD_COREN       := TCOREN.Create;
  LOTE_VENCIMENTO := TLOTEVACINA.Create;
  COD_LOTE        := TLOTEVACINA.Create;
end;

destructor TCARTEIRA_VACINACAO.Destroy;
begin
  FreeAndNil(COD_COREN);
  FreeAndNil(COD_LOTE);
  FreeAndNil(LOTE_VENCIMENTO);
  inherited;
end; }

end.
