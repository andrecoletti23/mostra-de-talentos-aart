unit UMensagens;

interface

resourcestring
  //Geral
  STR_ATENCAO                 = 'Atenção';
  STR_CAPTION_ABA_CONSULTAS   = '%d - %s...';
  STR_TODOS                   = 'Todos';
  STR_ATUALIZADO              = 'atualizado(a)';
  STR_GRAVADO                 = 'gravado(a)';
  STR_EXCLUIDO                = 'excluido(a)';
  STR_OPERACAO_COM_SUCESSO    = '%s com código %d %s com sucesso.';
  STR_ENTIDADE_NAO_ENCONTRADA = '%s com código %d não foi encontrado(a)';

  //Entidade
  STR_ENTIDADE_GRAVADA_COM_SUCESSO    = '%s gravado(a) com sucesso! Código gerado: %d.';
  STR_ENTIDADE_ATUALIZADO_COM_SUCESSO = '%s atualizado(a) com sucesso!';
  STR_ENTIDADE_DESEJA_EXCLUIR         = 'Deseja realmente excluir este(a) %s?';

  //CRUD
  STR_CRUD_CABECALHO = 'Cadastro de %s';

  //Transação
  STR_JA_EXISTE_TRANSACAO_ATIVA   = 'Não foi possivel abrir uma nova transação! Motivo: Já existe uma transação ativa.';
  STR_NAO_EXISTE_TRANSACAO_ATIVA  = 'Não foi possivel %s a transação! Motivo: Não existe uma transação ativa.';
  STR_VALIDA_TRANSACAO_ATIVA      = 'Operação abortada! Motivo: Para realizar esta operação é necessário ter uma transação ativa.';
  STR_ABORTAR                     = 'abortar';
  STR_FINALIZAR                   = 'finalizar';

  //Carteira_Vacinação_Agente
  STR_NOME_AGENTE_NAO_INFORMADO = 'Nome do Agente não informado';
  STR_LOGIN_NAO_INFORMADO = 'Login não informado';
  STR_SENHA_NAO_INFORMADA = 'Senha não informada';
  STR_COREN_NAO_INFORMADO = 'Coren não informado';
  STR_ESPECIFICACAO_NAO_INFORMADA = 'Especificação não informada';
  STR_DATA_NAO_INFORMADA = 'Data não informada';
  STR_TURNO_NAO_INFORMADO = 'Turno não informado';
  STR_TELEFONE_NAO_INFORMADO = 'Telefone não informado';

  //Carteira_Vacinação
  STR_CODIGO_VACINA_NAO_INFORAMADO = 'Código não informado';
  STR_CODIGO_VACINA_NAO_INFORMADO = 'Nome da vacina não informado';
  STR_VACINA_NAO_INFORMADA = 'Vacina não informada';
  STR_DOSE_NAO_INFORMADA = 'Dose não inforada';
  STR_DATA_VACINA_NAO_INFORMADA = 'Data da vacina não informada';
  STR_RESPONSAVEL_NAO_INFORMADO = 'Responsável não informado';
  STR_CODIGO_COREN_NAO_INFORMADO = 'Coren do agente não informado';
  STR_CODIGO_LOTE_NAO_INFORMADO = 'Código do lote não informado';
  STR_LOTE_VENCIMENTO_NAO_INFORMADO = 'Vencimento do lote não informado';
  STR_UNIDADE_SAUDE_NAO_INFORMADA = 'Unidade de saúde não informada';

  //Carteira_Vacinação_Lote_Vacina
  STR_LOTE_VACINA_NAO_INFORMADO = 'Lote da vacina não informado';
  STR_LABORATORIO_NAO_INFORMADO = 'Laboratório não informado';

  //Carteira_Vacinação_Paciente
  STR_CODIGO_SUS_NAO_INFORMADO = 'Código SUS não informado';
  STR_NOME_PACIENTE_NAO_INFORMADO = 'Nome do paciente não informado';
  STR_NASCIMENTO_NAO_INFORMADO = 'Nascimento não informado';
  STR_SEXO_NAO_INFORMADO = 'Sexo não informado';
  STR_ENDERECO_NAO_INFORMADO = 'Endereço não informado';
  STR_PAI_NAO_INFORMADO = 'Nome do pai não informado';
  STR_MAE_NAO_INFORMADA = 'Nome da mãe não informado';
  STR_ESTADO_CIVIL_NAO_INFORMADO = 'Estado civil não informado';
  STR_UF_NAO_INFORMADO = 'UF não informado';
  STR_BAIRRO_NAO_INFORMADO = 'Bairro não informado';
  STR_CIDADE_NAO_INFORMADA = 'Cidade não informada';
  STR_DESCRICAO_VACINA_NAO_INFORMADA = 'Descrição não informada';

  //novo
  STR_DATA_RETORNO_NAO_INFORMADA = 'Data de retorno não informada';
  STR_VACINA_RETORNO_NAO_INFORMADA = 'Vacina para retorno não informada';

implementation

end.
