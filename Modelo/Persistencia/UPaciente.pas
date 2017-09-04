unit UPaciente;

interface

uses
  UEntidade;

type
  TPACIENTE = class(TENTIDADE)
    public
      ID : Integer ;
      CODIGO_SUS : String;
      NOME : String ;
      NASCIMENTO : TDateTime ;
      SEXO : String ;
      CPF : String ;
      RG : Integer ;
      ENDERECO : String ;
      TEL_FIXO : String ;
      CELULAR : String;
      PAI : String;
      MAE : String;
      ESTADO_CIVIL : String;
      ORGAO_EMISSOR : String;
      DATA_EMISSAO :TDateTime;
      UF : String;
      BAIRRO : String;
      REFERENCIA : String;
      TEL_COMERCIAL : String;
      TIPO_SANGUE : String;
      PESSOA_RECADO : String;
      CIDADE : String;
  end;

  const
    TBL_PACIENTE      = 'PACIENTE';
    FLD_ID            = 'ID';
    FLD_CODIGO_SUS	  = 'CODIGO_SUS';
    FLD_NOME	        = 'NOME';
    FLD_NASCIMENTO    = 'NASCIMENTO';
    FLD_SEXO          = 'SEXO';
    FLD_CPF           = 'CPF';
    FLD_RG            = 'RG';
    FLD_ENDERECO      = 'ENDERECO';
    FLD_TEL_FIXO      = 'TEL_FIXO';
    FLD_CELULAR       = 'CELULAR';
    FLD_PAI           = 'PAI';
    FLD_MAE           = 'MAE';
    FLD_ESTADO_CIVIL  = 'ESTADO_CIVIL';
    FLD_ORGAO_EMISSOR = 'ORGAO_EMISSOR';
    FLD_DATA_EMISSAO  = 'DATA_EMISSAO';
    FLD_UF            = 'UF';
    FLD_BAIRRO        = 'BAIRRO';
    FLD_REFERENCIA    = 'REFERENCIA';
    FLD_TEL_COMERCIAL = 'TEL_COMERCIAL';
    FLD_TIPO_SANGUE   = 'TIPO_SANGUE';
    FLD_PESSOA_RECADO = 'PESSOA_RECADO';
    FLD_CIDADE        = 'CIDADE';

resourcestring
  STR_PACIENTE = 'PACIENTES';

implementation



end.
