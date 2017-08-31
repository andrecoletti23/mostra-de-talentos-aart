unit UCarteiraVacinacao;

interface

uses
    UEntidade
  ;

type
  TCARTEIRA_VACINACAO = class(TENTIDADE)
  public
  car_cod_vacinacao: String;
	car_nome: String;
	car_vacina: String;
	car_dose: Integer;
	car_data: String;
	car_responsavel: String;
	car_cod_coren: String;
	car_cod_lote: Integer;
	car_lote_vencimento: String;
  end;

const
  TBL_CARTEIRA_VACINACAO           = 'CATEIRA_VACINACAO';
  FLD_COD_VACINACAO = 'CAR_COD_VACINACAO';
  FLD_NOME      = 'CAR_NOME';
  FLD_VACINA = 'CAR_VACINA';
  FLD_DOSE  = 'CAR_DOSE';
  FLD_DATA  = 'CAR_DATA';
  FLD_RESPONSAVEL  = 'CAR_RESPONSAVEL';
  FLD_COD_COREN  = 'CAR_COD_COREN';
  FLD_COD_LOTE  = 'CAR_COD_LOTE';
  FLD_LOTE_VENCIMENTO  = 'CAR_LOTE_VENCIMENTO';
implementation

{ TCARTEIRA_VACINACAO }

end.
