-- CONSULTAS

-- A sintaxe para consultas é SELECTE X FROM Y
-- Em X são definidas as colunas e em Y a tabela

SELECT
    nome,
    idade,
    matriculado_em AS "quando_se_matriculou" -- Pode-se utilizar o "AS" para mudar o nome que a coluna irá ter nos resultados da query
    FROM aluno;

-- FILTRANDO REGISTROS DE CAMPO DO TIPO TEXTO

SELECT * FROM aluno WHERE nome = 'Diogo'; -- Para adicionar condições aos queries utiliza-se o "WHERE" após o nome da tabela
SELECT * FROM aluno WHERE nome LIKE '_iogo'; -- O operador LIKE é utilizado para encontrar entradas parecidas. O _ substitui qualquer caracter (coringa).
SELECT * FROM aluno WHERE nome NOT LIKE '%Di%'; -- Pode-se usar o NOT para ter a querie complementar. Além disso o % substitui qualquer string (coringa de múltiplos caracteres).

-- FILTRANDO VALURES NULOS E NÃO NULOS

SELECT * from aluno WHERE cpf IS NULL;

-- FILTRANDO VALORES NUMÉRICOS

SELECT * FROM aluno WHERE idade <= 35;
SELECT * FROM aluno WHERE idade BETWEEN 10 AND 35; -- O operador "BETWEEN" e "AND" podem ser utilizados para formar intervalos. Eles são inclusivos.

-- FILTRANDO VALORES BOOLEANOS

SELECT * FROM aluno WHERE ativo = TRUE;

-- OPERADORES LÓGICOS

SELECT * FROM aluno WHERE
    nome LIKE 'D%'
    AND cpf IS NOT NULL;

SELECT * FROM aluno WHERE
    nome LIKE 'Diogo'
    OR nome LIKE 'Rodrigo';
