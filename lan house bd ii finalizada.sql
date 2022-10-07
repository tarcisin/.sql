CREATE TABLE cliente (
  cpf VARCHAR(14) NOT NULL,
  nome VARCHAR(120) NOT NULL,
  idade INTEGER NOT NULL,
  genero CHAR(1) NOT NULL,
  endereco VARCHAR(100) NOT NULL,
  bairro VARCHAR(50) NOT NULL,
  nasc DATETIME NOT NULL,
  PRIMARY KEY(cpf)
);

CREATE TABLE computadores(
  idCompt INTEGER NOT NULL PRIMARY KEY,
  ip VARCHAR(14) NOT NULL
);

CREATE TABLE tarifacao(
  idTarifa INTEGER NOT NULL PRIMARY KEY,
  tipo VARCHAR(20) NOT NULL,
  valor FLOAT NOT NULL
);

CREATE TABLE historico(
  idHist INTEGER PRIMARY KEY,
  dataSessao DATETIME NOT NULL,
  inicioSes TIME NOT NULL,
  fimSes TIME NOT NULL,
  cpf_cliente VARCHAR(11),
  idTarifa INTEGER,
  idCompt INTEGER,
  FOREIGN KEY (cpf_cliente) REFERENCES cliente(cpf),
  FOREIGN KEY (idTarifa) REFERENCES tarifacao(idTarifa),
  FOREIGN KEY (idCompt) REFERENCES computadores(idCompt)  
);

INSERT INTO cliente
VALUES 
("00000000001", "Lucas Moscardini", 33, "M", "Av. Sla onde, Maricá", "Centro", 19891210),
("00000000002", "Dehzin Casagrande", 31, "M", "Av. Sla onde, SP", "Setor Oeste", 19911212),
("00000000003", "Celo Songs", 31, "M", "Rua qualquer, Maricá", "Zona Leste", 19911112);

INSERT INTO computadores 
VALUES
(1, "192.168.100.1"), (2, "192.168.100.2"), (3, "192.168.100.3"), (4, "192.168.100.4"), (5, "192.168.100.5"),
(6, "192.168.100.6"), (7, "192.168.100.7"), (8, "192.168.100.8"), (9, "192.168.100.9"), (10, "192.168.100.10"),
(11, "192.168.100.11"), (12, "192.168.100.12"), (13, "192.168.100.13"), (14, "192.168.100.14"), (15, "192.168.100.15"),
(16, "192.168.100.16"), (20, "192.168.100.20"), (17, "192.168.100.17"), (18, "192.168.100.18"), (19, "192.168.100.19");

INSERT INTO tarifacao
VALUES
(01, "Corujão", 45.00),
(02, "Horário Comercial", 15.50),
(03, "Noturno", 10.75);

INSERT INTO historico
VALUES
(02, 20220612, 040406, 050507, "00000000002", 01, 11),
(01, 20220612, 080806, 121207, "00000000001", 02, 3),
(03, 20220612, 200806, 211207, "00000000003", 03, 7);

SELECT * FROM tarifacao WHERE tipo = "Corujão";
SELECT * FROM tarifacao WHERE tipo = "Horário Noturno";

SELECT nome FROM cliente WHERE idade > 18;

SELECT ip FROM computadores WHERE idCompt > 2;

SELECT * FROM historico;