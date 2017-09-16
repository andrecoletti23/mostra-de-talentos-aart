unit UMensagens;

interface

resourcestring
  //Geral
  STR_ATENCAO                 = 'Aten��o';
  STR_CAPTION_ABA_CONSULTAS   = '%d - %s...';
  STR_TODOS                   = 'Todos';
  STR_ATUALIZADO              = 'atualizado(a)';
  STR_GRAVADO                 = 'gravado(a)';
  STR_EXCLUIDO                = 'excluido(a)';
  STR_OPERACAO_COM_SUCESSO    = '%s com c�digo %d %s com sucesso.';
  STR_ENTIDADE_NAO_ENCONTRADA = '%s com c�digo %d n�o foi encontrado(a)';

  //Entidade
  STR_ENTIDADE_GRAVADA_COM_SUCESSO    = '%s gravado(a) com sucesso! C�digo gerado: %d.';
  STR_ENTIDADE_ATUALIZADO_COM_SUCESSO = '%s atualizado(a) com sucesso!';
  STR_ENTIDADE_DESEJA_EXCLUIR         = 'Deseja realmente excluir este(a) %s?';

  //CRUD
  STR_CRUD_CABECALHO = 'Cadastro de %s';

  //Transa��o
  STR_JA_EXISTE_TRANSACAO_ATIVA   = 'N�o foi possivel abrir uma nova transa��o! Motivo: J� existe uma transa��o ativa.';
  STR_NAO_EXISTE_TRANSACAO_ATIVA  = 'N�o foi possivel %s a transa��o! Motivo: N�o existe uma transa��o ativa.';
  STR_VALIDA_TRANSACAO_ATIVA      = 'Opera��o abortada! Motivo: Para realizar esta opera��o � necess�rio ter uma transa��o ativa.';
  STR_ABORTAR                     = 'abortar';
  STR_FINALIZAR                   = 'finalizar';

  //Carteira_Vacina��o_Agente
  STR_NOME_AGENTE_NAO_INFORMADO = 'Nome do Agente n�o informado';
  STR_LOGIN_NAO_INFORMADO = 'Login n�o informado';
  STR_SENHA_NAO_INFORMADA = 'Senha n�o informada';
  STR_COREN_NAO_INFORMADO = 'Coren n�o informado';
  STR_ESPECIFICACAO_NAO_INFORMADA = 'Especifica��o n�o informada';
  STR_DATA_NAO_INFORMADA = 'Data n�o informada';
  STR_TURNO_NAO_INFORMADO = 'Turno n�o informado';
  STR_TELEFONE_NAO_INFORMADO = 'Telefone n�o informado';

  //Carteira_Vacina��o
  STR_CODIGO_VACINA_NAO_INFORAMADO = 'C�digo n�o informado';
  STR_CODIGO_VACINA_NAO_INFORMADO = 'Nome da vacina n�o informado';
  STR_VACINA_NAO_INFORMADA = 'Vacina n�o informada';
  STR_DOSE_NAO_INFORMADA = 'Dose n�o inforada';
  STR_DATA_VACINA_NAO_INFORMADA = 'Data da vacina n�o informada';
  STR_RESPONSAVEL_NAO_INFORMADO = 'Respons�vel n�o informado';
  STR_CODIGO_COREN_NAO_INFORMADO = 'Coren do agente n�o informado';
  STR_CODIGO_LOTE_NAO_INFORMADO = 'C�digo do lote n�o informado';
  STR_LOTE_VENCIMENTO_NAO_INFORMADO = 'Vencimento do lote n�o informado';
  STR_UNIDADE_SAUDE_NAO_INFORMADA = 'Unidade de sa�de n�o informada';

  //Carteira_Vacina��o_Lote_Vacina
  STR_LOTE_VACINA_NAO_INFORMADO = 'Lote da vacina n�o informado';
  STR_LABORATORIO_NAO_INFORMADO = 'Laborat�rio n�o informado';

  //Carteira_Vacina��o_Paciente
  STR_CODIGO_SUS_NAO_INFORMADO = 'C�digo SUS n�o informado';
  STR_NOME_PACIENTE_NAO_INFORMADO = 'Nome do paciente n�o informado';
  STR_NASCIMENTO_NAO_INFORMADO = 'Nascimento n�o informado';
  STR_SEXO_NAO_INFORMADO = 'Sexo n�o informado';
  STR_ENDERECO_NAO_INFORMADO = 'Endere�o n�o informado';
  STR_PAI_NAO_INFORMADO = 'Nome do pai n�o informado';
  STR_MAE_NAO_INFORMADA = 'Nome da m�e n�o informado';
  STR_ESTADO_CIVIL_NAO_INFORMADO = 'Estado civil n�o informado';
  STR_UF_NAO_INFORMADO = 'UF n�o informado';
  STR_BAIRRO_NAO_INFORMADO = 'Bairro n�o informado';
  STR_CIDADE_NAO_INFORMADA = 'Cidade n�o informada';
  STR_DESCRICAO_VACINA_NAO_INFORMADA = 'Descri��o n�o informada';

  //novo
  STR_DATA_RETORNO_NAO_INFORMADA = 'Data de retorno n�o informada';
  STR_VACINA_RETORNO_NAO_INFORMADA = 'Vacina para retorno n�o informada';

implementation

end.
