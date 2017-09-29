unit UCarteiraVacinacao;

interface

uses
    UEntidade
  , UCoren
  , ULoteVacina
  , UPaciente
  ;

type
  TCARTEIRA_VACINACAO = class(TENTIDADE)
  public
  ID_SUS            : TPACIENTE;
  //COD_VACINACAO     : String;
	NOME              : String;
	VACINA            : String;
	DOSE              : String;
	DATA              : TDate;
	RESPONSAVEL       : String;
	COD_COREN         : String;
	COD_LOTE          : String;
	LOTE_VENCIMENTO   : TDate;
  UNIDADE_SAUDE     : String;


    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_CARTEIRA_VACINACAO        = 'CARTEIRA_VACINACAO';
  FLD_CAR_ID_SUS                    = 'ID_SUS';
  //FLD_CAR_COD_VACINACAO         = 'COD_VACINACAO';
  FLD_CAR_NOME                  = 'NOME';
  FLD_CAR_VACINA                = 'VACINA';
  FLD_CAR_DOSE                  = 'DOSE';
  FLD_CAR_DATA                  = 'DATA';
  FLD_CAR_RESPONSAVEL           = 'RESPONSAVEL';
  FLD_CAR_COD_COREN             = 'COD_COREN';
  FLD_CAR_COD_LOTE              = 'COD_LOTE';
  FLD_CAR_LOTE_VENCIMENTO       = 'LOTE_VENCIMENTO';
  FLD_UNIDADE_SAUDE             = 'UNIDADE_SAUDE';
resourcestring
  STR_CARTEIRA_VACINACAO = 'Carteira de Vacinação Online';

implementation

uses
    SysUtils
  , Dialogs
  ;

{ TCARTEIRA_VACINACAO }

constructor TCARTEIRA_VACINACAO.Create;
begin
  inherited;
  ID_SUS       := TPACIENTE.Create;
 // LOTE_VENCIMENTO := TLOTEVACINA.Create;
  //COD_LOTE        := TLOTEVACINA.Create;
end;

destructor TCARTEIRA_VACINACAO.Destroy;
begin
  FreeAndNil(ID_SUS);
  //FreeAndNil(COD_LOTE);
  //FreeAndNil(LOTE_VENCIMENTO);
  inherited;
end;

end.
