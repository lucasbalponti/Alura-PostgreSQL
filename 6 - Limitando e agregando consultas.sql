-- CRIANDO TABELA DE EXEMPLO

CREATE TABLE funcionarios(
    id SERIAL PRIMARY KEY,
    matricula VARCHAR(10),
    nome VARCHAR(255),
    sobrenome VARCHAR(255)
);

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinícius', 'Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Nico', 'Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'João', 'Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Alberto', 'Martins');

-- ORDENANDO AS CONSULTAS

-- Ordenando através de um campo:
SELECT * FROM funcionarios
    ORDER BY nome;

-- Ordenando em ordem decrescente:
SELECT * FROM funcionarios
    ORDER BY nome DESC;

-- Ordenando por dois campos
SELECT * FROM funcionarios
    ORDER BY nome, matricula;

-- É possível passar o "index" das colunas no ordenamento também:
SELECT * FROM funcionarios
    ORDER BY 3,4,2;

-- LIMITANDO AS CONSULTAS

-- Basta utilizar "LIMIT" para selecionar a quantidade de entradas da consultas
SELECT * FROM funcionarios LIMIT 5;

-- É possível utilizar o "OFFSET" para "andar com os registros para frente"
SELECT * FROM funcionarios LIMIT 5 OFFSET 3;

-- FUNÇÕES DE AGREGAÇÃO
-- COUNT retorna a quantidade de registros
-- SUM retorna a soma dos registros
-- MAX retorna o maior valor dos registros
-- MIN retorna o menor valor dos registros
-- AVG retorna a média dos registros

SELECT COUNT(id),
       SUM(id),
       MAX(id),
       MIN(id),
       AVG(id)
    FROM funcionarios;

-- AGRUPANDO CONSULTAS

-- É possível utilizar o "DISTINCT" para trazer os valores únicos da consulta
SELECT DISTINCT
        nome,
        sobrenome
    FROM funcionarios
    ORDER BY nome;

-- Para agrupar as agregações deve-se utilizar "GROUP BY"; é também possível utilizar
-- o "index" das colunas neste caso
SELECT
        nome,
        sobrenome,
        COUNT(id)
    FROM funcionarios
    GROUP BY nome, sobrenome
    ORDER BY nome;

-- FILTRANDO COLUNAS AGRUPADAS

-- No caso de agrupamentos, deve-se utilizar a função "HAVING" ao invés de "WHERE"
SELECT curso.nome, COUNT(aluno2.id)
    FROM curso
    LEFT JOIN aluno2_curso ON aluno2_curso.curso_id = curso.id
    LEFT JOIN aluno2 ON aluno2.id = aluno2_curso.aluno2_id
    GROUP BY curso.nome
    HAVING COUNT(aluno2.id) > 0