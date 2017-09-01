create table cad_agente(
  agente_id integer not null,
  agente_nome varchar (60) not null,
  agente_login varchar (10) not null,
  agente_senha varchar (6) not null,
  agente_email varchar (60),
  
  
  constraint pk_agente_id primary key (agente_id),
  constraint uk_agente_login unique (agente_login),
  constraint uk_agente_email unique (agente_email)
  
);
drop table cad;

create table cad_pessoa(
  --pessoa_id integer not null,
  pessoa_codigo varchar (15) not null,
  pessoa_nome varchar (60) not null,
  pessoa_nascimento integer not null,
  pessoa_sexo varchar (15) not null,
  pessoa_cpf varchar (11),
  pessoa_rg integer ,
  pessoa_estado varchar (2) not null,
  pessoa_cidade varchar (40) not null, 
  pessoa_endereco varchar (60) not null,
  pessoa_tel_fixo integer,
  pessoa_celular integer,
  pessoa_pai varchar (60) not null,
  pessoa_mae varchar (60) not null,
  
  --constraint pk_pessoa_id primary key (pessoa_id),
  constraint uk_pessoa_codigo unique (pessoa_codigo),
  constraint uk_pessoa_cpf unique (pessoa_cpf),
  constraint uk_pessoa_rg unique (pessoa_rg)
 
);

drop table cad_pessoa;

select * from cad_pessoa;
delete from cad_pessoa where pessoa_id = 1;

insert into cad_pessoa values (1,'123456789112345', 'José da Silva',05061998, 'Masculino','99999999999' ,null ,'Rua Blabla', 475, 4716, 'Luis da Silva', 'Maria da Silva');

create table vacina_tomada(
   integer not null,
  
  
);

create table enfermeira(
  enfer_nome varchar (60) not null,
  enfer_plantao varchar (10) not null,
  enfer_posto_saude integer not null,
);