-- create a table
CREATE TABLE cliente (
  cpf VARCHAR(11) PRIMARY KEY,
  name VARCHAR(120) NOT NULL,
  idade INTEGER NOT NULL,
  gender CHAR(1) NOT NULL,
  endereco VARCHAR(100) NOT NULL,
  bairro VARCHAR(30) NOT NULL,
  nasc DATETIME
);

CREATE TABLE computadores(
  idCompt INTEGER PRIMARY KEY,
  ip VARCHAR(14) NOT NULL
);

CREATE TABLE tarifacao(
  idTarifa INTEGER PRIMARY KEY,
  tipo VARCHAR(15) NOT NULL,
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