drop table agente;
create table agente(
  id integer not null,
  agente_id integer not null,
  agente_nome varchar (60) not null,
  agente_login varchar (10) not null,
  agente_senha varchar (6) not null,
  agente_email varchar (60),
  
  
  constraint pk_cad_agente primary key (id),
  constraint uk_agente_login unique (agente_login),
  constraint uk_agente_email unique (agente_email)
  
);
drop table pacientes;

create table paciente(
  id integer not null,
  codigo_sus varchar (20) not null,
  nome varchar (60) not null,
  nascimento date not null,
  sexo varchar (15) not null,
  cpf varchar (20),
  rg integer ,
  endereco varchar (60) not null,
  tel_fixo varchar (20),
  celular varchar (20),
  pai varchar (60) not null,
  mae varchar (60) not null,
  estado_civil varchar (30) not null,
  orgao_emissor varchar (60),
  data_emissao date,
  uf varchar (2) not null,
  bairro varchar (60) not null,
  referencia varchar (60),
  tel_comercial varchar (20),
  tipo_sangue varchar (2),
  pessoa_recado varchar (60),
  cidade varchar(50) not null,
  
  
  constraint pk_paciente_id primary key (id),
  constraint uk_paciente_codigo unique (codigo_sus),
  constraint uk_paciente_cpf unique (cpf),
  constraint uk_paciente_rg unique (rg)
 
);
create generator gen_paciente_id;

create table enfermeira(
  id integer not null,
  enfer_nome varchar (60) not null,
  enfer_plantao varchar (10) not null,
  enfer_posto_saude integer not null,
  
  constraint pk_enfermeira primary key (id)
);
create table carteira_vacinacao (
	id integer not null,
	cod_vacinacao varchar (15) not null,
	nome varchar (60) not null,
	vacina varchar (60) not null, 
	dose integer not null,
	data varchar (10) not null,
	responsavel varchar (60) not null,
	cod_coren varchar (60) not null,
	cod_lote integer not null,
	lote_vencimento varchar (10) not null,
	
	constraint pk_carteira_vacinacao primary key (id),
	constraint uk_cod_vacinacao unique (cod_vacinacao),
	constraint fk_cod_coren foreign key (cod_coren) references coren(coren),
	constraint fk_cod_lote foreign key (cod_lote) references lote_vacina(codigo),
	constraint fk_lote_vencimento foreign key (lote_vencimento) references lote_vacina(vencimento_lote),
	constraint fk_cod_vacinacao foreign key (cod_vacinacao) references paciente(codigo_sus)
);
create generator gen_carteira_vacinacao_id;
	
create table lote_vacina (
	id integer not null,
	codigo integer not null,
	vacina_nome varchar (60) not null,
	lote_vacina varchar (60) not null,
	laboratorio varchar (60) not null,
	vencimento_lote varchar (10) not null,
	
	constraint pk_lote_vacina primary key (id),
	constraint uk_codigo unique (codigo),
	constraint uk_vencimento_lote unique (vencimento_lote)
);

create table coren (
	id integer not null,
	coren varchar (60) not null,
	nome varchar (60) not null,
	especificacao varchar (3) not null,
	data_nasc varchar (10) not null,
	
	constraint pk_coren primary key (id),
	constraint uk_coren unique (coren)
);

create table faixa_etaria (
	id integer not null,
	codigo integer not null,
	descricao varchar (60),
	
	constraint pk_faixa_etaria primary key (id),
	constraint uk_faixa_etaria_codigo unique (codigo)
);
drop table genero;
create table genero (
	id integer not null,
	codigo integer not null,
	descricao varchar (60),
	
	constraint pk_genero primary key (id),
	constraint uk_genero_codigo unique (codigo)
);

create table vacina (
	id integer not null,
	codigo_vacina integer not null,
	nome varchar (60) not null,
	idade_minima float not null,
	idade_maxima float,
	dose integer not null,
	reforco integer,
	genero integer not null,
	faixa_etaria integer not null,
	
	constraint pk_vacina primary key (id),
	constraint fk_genero foreign key (genero) references genero(codigo),
	constraint fk_faixa_etaria foreign key (faixa_etaria) references faixa_etaria(codigo)

);
select * from VACINA;

/* MOCKS */
insert into genero values(1,1, 'Masculino');
insert into genero values(2,2, 'Feminino');
insert into genero values(3,3,'Unissex');

insert into faixa_etaria values(1, 1, 'Criança');
insert into faixa_etaria values(2, 2, 'Adolescente');
insert into faixa_etaria values(3, 3,	'Adulto');
insert into faixa_etaria values(4, 4,	'Idoso');
insert into faixa_etaria values(5, 5,	'Gestante');

insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (1,1,'BCG',0,0,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (2,2,'Hepatite B',0,0,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (3,3,'Hepatite B',10,19,3,3,2);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (4,4,'Hepatite B',20,59,3,3,3);
insert into vacina (id,codigo_vacina,nome,idade_minima,dose,genero,faixa_etaria) values (5,5,'Hepatite B',60,3,3,4);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (6,6,'Penta/DTP',0.2,0.2,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (7,7,'Penta/DTP',0.4,0.4,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (8,8,'Penta/DTP',0.6,0.6,1,3,1);
insert into vacina  values (9,9,'Penta/DTP',1.3,1.3,1,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,reforco,genero,faixa_etaria) values (10,10,'Penta/DTP',4,4,1,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (11,11,'VIP/VOP',0.2,0.2,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (12,12,'VIP/VOP',0.4,0.4,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (13,13,'VIP/VOP',0.6,0.6,1,3,1);
insert into vacina values (14,14,'VIP/VOP',1.3,1.3,1,1,3,1);
insert into vacina values (15,15,'VIP/VOP',4,4,1,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (16,16,'Pneumocócia 10V (conjugada)',0.2,0.2,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (17,17,'Pneumocócia 10V (conjugada)',0.4,0.4,1,3,1);
insert into vacina values (18,18,'Pneumocócia 10V (conjugada)',1,1,1,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (19,19,'Rotavírus Human',0.2,0.2,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (20,20,'Rotavírus Human',0.4,0.4,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (21,21,'Meningocócica C (conjugada)',0.3,0.3,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (22,22,'Meningocócica C (conjugada)',0.5,0.5,1,3,1);
insert into vacina values (23,23,'Meningocócica C (conjugada)',1,1,1,1,3,1);
insert into vacina values (24,24,'Meningocócica C (conjugada)',12,13,1,1,3,2);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (25,25,'Febre Amarela',0.9,0.9,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (26,26,'Hepatite A',1.3,1.9,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (27,27,'Tríplice Viral',1,1,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (28,28,'Tríplice Viral',20,29,2,3,2);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (29,29,'Tríplice Viral',30,49,1,3,2);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (30,30,'Tetra Viral',1.3,1.3,1,3,1);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (31,31,'HPV',9,14,2,2,2);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (32,32,'HPV',11,15,2,1,2);
insert into vacina (id,codigo_vacina,nome,idade_minima,dose,genero,faixa_etaria) values (33,33,'Dupla Adulto',10,1,3,2);
insert into vacina (id,codigo_vacina,nome,idade_minima,idade_maxima,dose,genero,faixa_etaria) values (34,34,'dTpa',0.5,0.5,1,3,5);