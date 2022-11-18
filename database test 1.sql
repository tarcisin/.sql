SELECT COUNT(nome) FROM `basedosdados.br_ibge_nomes_brasil.quantidade_municipio_nome_2010` WHERE nome LIKE "Z%" LIMIT 50000;

SELECT COUNT(nome) FROM `basedosdados.br_ibge_nomes_brasil.quantidade_municipio_nome_2010` WHERE nome LIKE "%a" LIMIT 50000;

SELECT COUNT(nome) FROM `basedosdados.br_ibge_nomes_brasil.quantidade_municipio_nome_2010` WHERE nome LIKE "F___" LIMIT 50000;

SELECT nome FROM `basedosdados.br_ibge_nomes_brasil.quantidade_municipio_nome_2010` WHERE nome LIKE "%v%" AND id_municipio LIKE "11%" AND id_municipio LIKE "%15" LIMIT 50000;
	
SELECT id_municipio FROM `basedosdados.br_ibge_nomes_brasil.quantidade_municipio_nome_2010` WHERE nome = "Viviane" ORDER BY quantidade_nascimentos_ate_2010 DESC LIMIT 10;

SELECT id_municipio FROM `basedosdados.br_ibge_nomes_brasil.quantidade_municipio_nome_2010` WHERE nome = "Joaquim" ORDER BY quantidade_nascimentos_ate_2010 DESC LIMIT 100000;

SELECT quantidade_nascimentos_ate_2010 FROM `basedosdados.br_ibge_nomes_brasil.quantidade_municipio_nome_2010` WHERE nome = "Zulmira" AND id_municipio = "5210000" LIMIT 1000;

SELECT quantidade_nascimentos_ate_2010 FROM `basedosdados.br_ibge_nomes_brasil.quantidade_municipio_nome_2010` WHERE nome = "Abdias" AND id_municipio = "5208707" LIMIT 1000;

SELECT SUM(quantidade_nascimentos_ate_2010) as n FROM `basedosdados.br_ibge_nomes_brasil.quantidade_municipio_nome_2010` 
WHERE id_municipio = '5208707' AND (nome = "Zumira" OR nome = "Zulmira") LIMIT 1000;
