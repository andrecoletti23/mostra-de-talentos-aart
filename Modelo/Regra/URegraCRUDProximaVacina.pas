<<<<<<< HEAD

=======
>>>>>>> Prox-vacina
unit URegraCRUDProximaVacina;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioProximaVacina
  , UEntidade
<<<<<<< HEAD
  , UProximaVacina
=======
>>>>>>> Prox-vacina
  ;

type
  TRegraCRUDProximaVacina = class(TRegraCRUD)
<<<<<<< HEAD
  protected
    procedure ValidaInsercao(const coENTIDADE: TENTIDADE); override;
=======
>>>>>>> Prox-vacina
  public
    constructor Create; override;
  end;

implementation

<<<<<<< HEAD
{ TRegraCRUDCidade }

uses
    SysUtils
  , UUtilitarios
  , UMensagens
  , UConstantes
  ;
=======
{ TRegraCRUDCadPessoa }
>>>>>>> Prox-vacina

constructor TRegraCRUDProximaVacina.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioProximaVacina.Create);
end;

<<<<<<< HEAD
procedure TRegraCRUDProximaVacina.ValidaInsercao(const coENTIDADE: TENTIDADE);
begin
  inherited;

  if Trim(TPROXIMAVACINA(coENTIDADE).SUS_CODIGO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_CODIGO_SUS_NAO_INFORMADO);

  if (TPROXIMAVACINA(coENTIDADE).NOME) = EmptyStr then
    raise EValidacaoNegocio.Create (STR_VACINA_NAO_INFORMADA);

  //if Trim(TPROXIMAVACINA(coENTIDADE).DATA_RETORNO) = EmptyStr Then
    //raise EValidacaoNegocio.Create(STR_DATA_RETORNO_NAO_INFORMADA);

  if Trim(TPROXIMAVACINA(coENTIDADE).VACINA_RETORNO) = EmptyStr Then
    raise EValidacaoNegocio.Create(STR_VACINA_RETORNO_NAO_INFORMADA);

end;

=======
>>>>>>> Prox-vacina
end.
