unit UVacina;

interface

uses
    UEntidade
  , UFaixaEtaria
  , UGenero
  ;

type
  TVACINA = class(TENTIDADE)
  public
    Codigo: Integer;
    Nome: String;
    Idade_Minima: Double;
    Idade_Maxima: Double;
    Dose: Integer;
    Reforco: Integer;
    Genero: TGenero;
    Faixa_Etaria: TFaixa_Etaria;


    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_VACINA       = 'VACINA';
  FLD_CODIGO       = 'CODIGO';
  FLD_IDADE_MINIMA = 'IDADE_MINIMA';
  FLD_IDADE_MAXIMA = 'IDADE_MAXIMA';
  FLD_DOSE         = 'DOSE';
  FLD_REFORCO      = 'REFORCO';
  FLD_GENERO       = 'GENERO';
  FLD_FAIXA_ETARIA = 'FAIXA_ETARIA';


implementation

uses
    SysUtils
  , Dialogs
  ;

{ TVACINA }

constructor TVACINA.Create;
begin
  GENERO := TGENERO.Create;
  FAIXA_ETARIA:= TFAIXA_ETARIA.Create;
end;

destructor TVACINA.Destroy;
begin
  FreeAndNil(GENERO);
  FreeAndNil (FAIXA_ETARIA);
  Inherited;
end;
end.
