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
  //COD_VACINACAO     : String; //NÃO PODE SER UNIQUE!!!!! VÁRIAS VACÍNAS PARA PACIENTES
	NOME              : String;
	VACINA            : String;
	DOSE              : String; //MUDAR PARA VARCHAR NO DB E ARRUMAR DTO
	DATA              : TDate; //MUDAR PARA DATE NO DB E ARRUMAR DTO
	RESPONSAVEL       : String;
	COD_COREN         : String; //TCOREN; MÃO MEXER
	COD_LOTE          : String; //TLOTEVACINA; NÃO MEXER
	LOTE_VENCIMENTO   : TDate; //TLOTEVACINA;  MUDAR PARA DATE QUANDO DB ESTIVER OK
  UNIDADE_SAUDE     : String;
  //TUDO OK, FALTANDO CRIAR COM TENTIDADES

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
