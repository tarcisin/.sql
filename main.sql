-- create a table
CREATE TABLE listaPresente (
  idLista INTEGER auto_increment,
  presente VARCHAR(30) NOT NULL,
  PRIMARY KEY (idLista)
);

CREATE TABLE historico (
  idHist INTEGER auto_increment,
  relacaoPartc VARCHAR(20) NOT NULL,
  PRIMARY KEY (idHist)
);

CREATE TABLE participante (
  idPart INTEGER auto_increment,
  nome VARCHAR(60),
  PRIMARY KEY (idPart)
);

CREATE TABLE avaliacao(
  idAval INTEGER auto_increment,
  nota INTEGER NOT NULL,
  sugest VARCHAR(50) NOT NULL,
  PRIMARY KEY (idAval)
);

CREATE TABLE mensagem(
  idMsg INTEGER auto_increment,
  toMsg INTEGER NOT NULL,
  conteudo VARCHAR(100) NOT NULL,
  PRIMARY KEY(idMsg)
);

INSERT INTO listaPresente VALUES (idLista, 'Álbum de música');
INSERT INTO listaPresente VALUES (idLista, 'Álbum de foto');
INSERT INTO listaPresente VALUES (idLista, 'Álbum do vitalism');
INSERT INTO listaPresente VALUES (idLista, 'Álbum do axty');
INSERT INTO listaPresente VALUES (idLista, 'Álbum bom');

INSERT INTO historico VALUES(idHist, 'Primo');
INSERT INTO historico VALUES(idHist, 'Pai');
INSERT INTO historico VALUES(idHist, 'Tio');
INSERT INTO historico VALUES(idHist, 'Mãe');
INSERT INTO historico VALUES(idHist, 'Prima');

INSERT INTO participante VALUES(idPart, 'LuCas');
INSERT INTO participante VALUES(idPart, 'André');
INSERT INTO participante VALUES(idPart, 'Marcelo');
INSERT INTO participante VALUES(idPart, 'Lias');
INSERT INTO participante VALUES(idPart, 'Mosca');

INSERT INTO avaliacao VALUES(idAval, 5, 'NADA');
INSERT INTO avaliacao VALUES(idAval, 6, 'NADA');
INSERT INTO avaliacao VALUES(idAval, 5, 'NADA');
INSERT INTO avaliacao VALUES(idAval, 8, 'NADA');
INSERT INTO avaliacao VALUES(idAval, 9, 'NADA');

INSERT INTO mensagem VALUES(idMsg, 2, '.');
INSERT INTO mensagem VALUES(idMsg, 2, 'nada');
INSERT INTO mensagem VALUES(idMsg, 2, 'null');
INSERT INTO mensagem VALUES(idMsg, 2, 'abc');
INSERT INTO mensagem VALUES(idMsg, 2, 'efg');

SELECT * FROM listaPresente;
SELECT * FROM avaliacao;
SELECT * FROM mensagem;
SELECT * FROM historico;
SELECT * FROM participante;