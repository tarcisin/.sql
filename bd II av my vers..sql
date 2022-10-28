SELECT * FROM `basedosdados.br_anp_precos_combustiveis.microdados` LIMIT 1000;
SELECT produto FROM `basedosdados.br_anp_precos_combustiveis.microdados` LIMIT 1000;
SELECT ano FROM `basedosdados.br_anp_precos_combustiveis.microdados` ORDER BY ano LIMIT 1;
SELECT bandeira_revenda FROM `basedosdados.br_anp_precos_combustiveis.microdados` WHERE sigla_uf = 'GO' LIMIT 1000;
SELECT produto FROM `basedosdados.br_anp_precos_combustiveis.microdados` WHERE sigla_uf = 'RJ' AND ano = 2018 ORDER BY preco_venda LIMIT 1;
SELECT bandeira_revenda FROM `basedosdados.br_anp_precos_combustiveis.microdados` WHERE sigla_uf = 'BA' AND ano = 2020 AND produto = 'etanol' ORDER BY preco_venda - preco_compra DESC LIMIT 1;
SELECT AVG(preco_venda) FROM `basedosdados.br_anp_precos_combustiveis.microdados` WHERE ano = 2021 AND produto = 'glp' LIMIT 1000;
SELECT count(data_coleta) FROM `basedosdados.br_anp_precos_combustiveis.microdados` WHERE ano = 2015 AND cep_revenda BETWEEN '75400-001' AND '75409-999' LIMIT 9999;

SELECT count(data_coleta) FROM `basedosdados.br_anp_precos_combustiveis.microdados` WHERE sigla_uf = 'PA' AND data_coleta BETWEEN '2014-05-01' AND '2014-05-31';
SELECT count(cnpj_revenda), sigla_uf FROM `basedosdados.br_anp_precos_combustiveis.microdados` GROUP BY sigla_uf;