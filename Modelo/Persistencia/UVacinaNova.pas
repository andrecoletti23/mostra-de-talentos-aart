unit UVacinaNova;

interface

uses
  UEntidade
, UPaciente;

 type
  TVACINANOVA= Class (TENTIDADE)
    public
      ID              : Integer;
      //COD_SUS         : TPACIENTE;
      IDADE           : String;
      VACINA          : String;
      DOSE            : String;
      //APLICADA        : String;
      //DATA_APLICAÇÃO  :TDate;

      //constructor Create; override;
      //destructor Destroy; override;

  end;

const
  TBL_VACINA_NOVA       = 'VACINA_NOVA';
  //FLD_COD_SUS           = 'COD_SUS';
  FLD_IDADE             = 'IDADE';
  FLD_VACINA            = 'VACINA';
  FLD_DOSE              = 'DOSE';
  //FLD_APLICADA          = 'APLICADA';
  //FLD_DATA_APLICACAO    = 'DATA_APLICAÇÃO';

resourcestring
  STR_VACINA_NOVA = 'VACINAS DO PACIENTE';

implementation

uses
    SysUtils
  , Dialogs
  ;
{ TVACINA_NOVA }

{constructor TVACINANOVA.Create;
begin
  inherited;
  COD_SUS   := TPACIENTE.Create;
end;

destructor TVACINANOVA.Destroy;
begin
  FreeAndNil(COD_SUS);
  inherited;
end;}

end.
