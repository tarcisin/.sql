create table ramo(
cd_ramo int,
ds_ramo varchar(50),
constraint PK_ramo primary key (cd_ramo));

create table tipo(
cd_tipo int,
ds_tipo varchar(50),
constraint PK_tipo primary key (cd_tipo));

create table municipio(
cd_municipio int,
ds_municipio varchar(50),
constraint PK_municipio primary key (cd_municipio));

create table assinante(
cd_assinante int,
nome varchar(50),
idade int,
cd_ramo int,
cd_tipo int,
constraint PK_assinante primary key (cd_assinante),
constraint FK_assinante1 foreign key (cd_ramo) references ramo (cd_ramo),
constraint FK_assinante2 foreign key (cd_tipo) references tipo (cd_tipo));

create table endereco(
cd_endereco int,
ds_endereco varchar(50),
complemento varchar(50),
bairro varchar(50),
CEP varchar(50),
cd_assinante int,
cd_municipio int,
constraint PK_endereco primary key (cd_endereco),
constraint FK_end foreign key (cd_assinante) references assinante (cd_assinante),
constraint FK_end2 foreign key (cd_municipio) references municipio (cd_municipio));

create table telefone(
cd_fone int,
ddd varchar(3),
n_fone varchar(10),
cd_endereco int,
constraint PK_telefone primary key (cd_fone),
constraint FK_fone foreign key (cd_endereco) references endereco (cd_endereco));



insert into tipo values (1, 'PREMIUM');
insert into tipo values (2, 'BÁSICO');
insert into tipo values (3, 'GRÁTIS');
insert into tipo values (4, 'RESIDENCIAL');

insert into ramo values (1, 'INFORMÁTICA');
insert into ramo values (2, 'MEDICINA');
insert into ramo values (3, 'COMÉRCIO');

insert into municipio values (1, 'Inhumas');
insert into municipio values (2, 'Goianira');
insert into municipio values (3, 'Uruana');
insert into municipio values (4, 'Formosa');
insert into municipio values (5, 'Goiânia');


INSERT INTO assinante VALUES (1, 'JOÃO', 25, 1, 2);
INSERT INTO assinante VALUES (2, 'JOSÉ', 33, 2, 1);
INSERT INTO assinante VALUES (3, 'MARIA', 40, 2, 1);    
INSERT INTO assinante VALUES (4, 'MARIA BETÂNIA', 57, 3, 3);    
INSERT INTO assinante VALUES (5, 'JOANA', 65, 1, 1);    


INSERT INTO endereco VALUES (1, 'RUA ABC', 'APTO 201', 'TESTE', '999999-00', 1, 1);
INSERT INTO endereco VALUES (2, 'RUA TESTES ABC', '', 'TESTE', '999999-00', 1, 1);
INSERT INTO endereco VALUES (3, 'RUA bbbbVVVVV', 'APTO 1201', 'CENTRO', '999999-00', 2, 4);
INSERT INTO endereco VALUES (4, 'RUA VV', 'APTO 1201', 'CENTRO', '999999-00', 3, 5);
INSERT INTO endereco VALUES (5, 'RUA testeVVVVV', 'APTO 1201', 'CENTRO', '999999-00', 4, 2);
INSERT INTO endereco VALUES (6, 'RUA AtesteVVVVVVV', 'APTO 1201', 'CENTRO', '999999-00', 5, 3);

INSERT INTO telefone VALUES (1, '62', '9999999999', 1);
INSERT INTO telefone VALUES (2, '64', '9999999999', 5);
INSERT INTO telefone VALUES (3, '61', '9999999999', 6);
INSERT INTO telefone VALUES (4, '63', '9999999999', 2);

INSERT INTO assinante VALUES (6, 'JOAQUIM', 22, 1, 2);  
INSERT INTO assinante VALUES (7, 'JOSÉ', 17, 2, 1);
INSERT INTO assinante VALUES (8, 'MADALENA', 44, 2, 1);
INSERT INTO assinante VALUES (9, 'BENTO', 37, 3, 3);    
INSERT INTO assinante VALUES (10, 'BARNABÉ', 51, 1, 1);


INSERT INTO endereco VALUES (7, 'RUA SEM SAIDA', 'CASA 02', 'TESTE', '999999-00', 6, 1);
INSERT INTO endereco VALUES (8, 'RUA ESQUECERAM DE MIM', '', 'TESTE', '999999-00', 7, 1);
INSERT INTO endereco VALUES (9, 'RUA ROBOCOP', '', 'CENTRO', '999999-00', 8, 5);
INSERT INTO endereco VALUES (10, 'RUA FLAFLU', '', 'CENTRO', '999999-00', 9, 5);
INSERT INTO endereco VALUES (11, 'RUA GENIVALDO LACERDA', '', 'CENTRO', '99999-00', 10, 4);
INSERT INTO endereco VALUES (12, 'AVENIDA TIRIRICA', 'APTO 1201', 'CENTRO', '999999-00', 10, 3);

INSERT INTO telefone VALUES (7, '64', '9999999999', 1);
INSERT INTO telefone VALUES (8, '62', '9999999999', 5);
INSERT INTO telefone VALUES (9, '62', '9999999999', 6);
INSERT INTO telefone VALUES (10, '61', '9999999999', 2);
INSERT INTO telefone VALUES (12, '61', '9999999999', 2);

SELECT * FROM assinante INNER JOIN telefone ON telefone.ddd = "62";
SELECT nome, ds_endereco, complemento, bairro, CEP FROM assinante INNER JOIN endereco ON endereco.cd_assinante = assinante.cd_assinante;
SELECT nome, ds_ramo FROM assinante INNER JOIN ramo ON assinante.cd_ramo = ramo.cd_ramo;
SELECT nome, ds_tipo FROM assinante INNER JOIN tipo ON tipo.cd_tipo = assinante.cd_tipo;
SELECT nome, ds_municipio, idade FROM assinante INNER JOIN endereco ON endereco.cd_assinante = assinante.cd_assinante INNER JOIN municipio ON endereco.cd_municipio = municipio.cd_municipio;