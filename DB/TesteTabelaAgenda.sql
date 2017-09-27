drop table vacina_nova;
create table vacina_nova (
    id integer not null,
    idade varchar (60) not null,
    vacina varchar (60) not null,
    dose varchar (20) not null,
    
    constraint pk_vacina_nova_id primary key (id)
   -- constraint fk_vacina_nova_pessoa_sus foreign key (cod_sus) references paciente(codigo_sus)


);
select * from vacina_nova;
select * from vacina;
insert into carteira_vacinacao values(1,'212 2221 1145 6666','Anderson Rafael Bruns', 'BCG', 'Dose única', '1991-02-02','Jorge','hud12','KLJ2232', '1992-02-02' ,'Aldkoas');
select * from vacina_nova vn, carteira_vacinacao cv where cv.vacina=vn.vacina;
select 
       cv.nome
     , cv.cod_vacinacao
     , vn.idade
     , cv.vacina
     , cv.dose
     , cv.data
from vacina_nova vn, carteira_vacinacao cv where cv.vacina = vn.vacina;
and cv.vacina <> vn.vacina ;
and vn.vacina   ;


/*Mocks*/
insert into vacina_nova values (1,'Ao nascer','BCG','Dose única');
insert into vacina_nova values (2,'Ao nascer', 'Hepatite B','1ª dose');
insert into vacina_nova values (3,'1 mês','Hepatite B','2ª dose');
insert into vacina_nova values (4,'2 meses','Vacina Oral contra a Pólio','1ª dose');
insert into vacina_nova values (5,'2 meses','Vacina Tetravalente ','1ª dose');
insert into vacina_nova values (6,'2 meses','Vacina Oral contra Rotavírus Humano','1ª dose');
insert into vacina_nova values (7,'2 meses','Vacina contra Pneumococos','1ª dose');
insert into vacina_nova values (8,'3 meses','Vacina contra Meningococo C','	1ª dose');
insert into vacina_nova values (9,'4 meses','Vacina Oral contra a Pólio','2ª dose');
insert into vacina_nova values (10,'4 meses','Vacina Tetravalente','2ª dose');
insert into vacina_nova values (11,'4 meses','Vacina Oral contra Rotavírus Humano','2ª dose');
insert into vacina_nova values (12,'4 meses','Vacina contra Pneumococos','2ª dose');
insert into vacina_nova values (13,'5 meses','Vacina contra Meningococo C','2ª dose');
insert into vacina_nova values (14,'6 meses','Vacina contra Hepatite B','3ª dose');
insert into vacina_nova values (15,'6 meses','Vacina Oral contra a Pólio','3ª dose');
insert into vacina_nova values (16,'6 meses','Vacina Tetravalente','3ª dose');
insert into vacina_nova values (17,'6 meses','Vacina contra Pneumococos','3ª dose');
insert into vacina_nova values (18,'9 meses','Vacina contra febre amarela ','1ª dose');
insert into vacina_nova values (19,'12 meses','Tríplice Viral','1ª dose');
insert into vacina_nova values (20,'12 meses','Vacina contra Pneumococos','Reforço');
insert into vacina_nova values (21,'15 meses','Vacina Oral contra a Pólio','Reforço');
insert into vacina_nova values (22,'15 meses','Vacina Tríplice Bacteriana','1º Reforço');
insert into vacina_nova values (23,'15 meses','Vacina contra Meningococo C','Reforço');
insert into vacina_nova values (24,'4 – 6 anos','Tríplice Viral','Reforço');
insert into vacina_nova values (25,'4 – 6 anos','Vacina Tríplice Bacteriana','2º Reforço');
insert into vacina_nova values (26,'De 11 a 19 anos','Dupla Adulto','1ª dose');
insert into vacina_nova values (27,'De 11 a 19 anos','Hepatite B','1ª dose');
insert into vacina_nova values (28,'De 11 a 19 anos','Febre Amarela','Reforço');
insert into vacina_nova values (29,'De 11 a 19 anos','Tríplice Viral ','Única');
insert into vacina_nova values (30,'1 mês após a 1ª dose contra Hepatite B','Hepatite B','2ª dose');
insert into vacina_nova values (31,'6 meses após a 2ª dose contra a Hepatite B ','Hepatite B','3ª dose');
insert into vacina_nova values (32,'2 meses após a 1ª dose de Dupla Adulto','Dupla Adulto','2ª dose');
insert into vacina_nova values (33,'2 meses após a 2ª dose de Dupla Adulto','Dupla Adulto','3ª dose');
insert into vacina_nova values (34,'A cada 10 anos, por toda a vida','Dupla Adulto','Reforço');
insert into vacina_nova values (35,'A cada 10 anos, por toda a vida','Febre Amarela','Reforço');
insert into vacina_nova values (36,'60 anos ou mais','Influenza','Anual')
