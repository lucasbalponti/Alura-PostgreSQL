-- CRIANDO NOVA TABELA E INSERINDO DADOS

CREATE TABLE curso(
    id INTEGER PRIMARY KEY, -- PKs sempre são únicas e não nulas
    nome VARCHAR(255) NOT NULL
);

INSERT INTO curso (id, nome) VALUES (1, 'HTML');
INSERT INTO curso (id, nome) VALUES (2, 'Javascript');
INSERT INTO curso (id, nome) VALUES (3, 'CSS');

-- CRIANDO NOVA TABELA DE ALUNOS E INSERINDO DADOS PARA CRIAR RELAÇÕES

CREATE TABLE aluno2(
    id SERIAL PRIMARY KEY, -- PKs sempre são únicas e não nulas
    nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno2 (nome) VALUES ('Diogo');
INSERT INTO aluno2 (nome) VALUES ('Vinicius');
INSERT INTO aluno2 (nome) VALUES ('Nico');

-- CRIANDO UMA TABELA ÚNICA UNINDO AS DUAS ENTRADAS

CREATE TABLE aluno2_curso(
    aluno2_id INTEGER,
    curso_id INTEGER,
    PRIMARY KEY (aluno2_id, curso_id),

    FOREIGN KEY (aluno2_id) REFERENCES aluno2(id),
    FOREIGN KEY (curso_id) REFERENCES curso(id)
);

INSERT INTO aluno2_curso (aluno2_id, curso_id) VALUES(1,1);
INSERT INTO aluno2_curso (aluno2_id, curso_id) VALUES(2,1);
INSERT INTO aluno2_curso (aluno2_id, curso_id) VALUES(2,2);

-- REALIZANDO CONSULTAS COM RELACIONAMENTOS

-- Realizando um Join
SELECT * FROM
    aluno2
    JOIN aluno2_curso ON aluno2_curso.aluno2_id = aluno2.id
    JOIN curso ON curso.id = aluno2_curso.curso_id

-- Selecionando apenas colunas específicas
SELECT aluno2.nome as "Nome do Aluno",
       curso.nome as "Nome do Curso"
        FROM
            aluno2
            JOIN aluno2_curso ON aluno2_curso.aluno2_id = aluno2.id
            JOIN curso ON curso.id = aluno2_curso.curso_id

-- Realizando um Left Join (Trás todos os valores da tabela "à esquerda", mesmo
-- que não tenha correspondencia nas outras tabelas)
SELECT aluno2.nome as "Nome do Aluno",
       curso.nome as "Nome do Curso"
        FROM
            aluno2
            LEFT JOIN aluno2_curso ON aluno2_curso.aluno2_id = aluno2.id
            LEFT JOIN curso ON curso.id = aluno2_curso.curso_id

-- Realizando um Right Join (Trás todos os valores da tabela "à direita", mesmo
-- que não tenha correspondencia nas outras tabelas)
SELECT aluno2.nome as "Nome do Aluno",
       curso.nome as "Nome do Curso"
        FROM
            aluno2
            RIGHT JOIN aluno2_curso ON aluno2_curso.aluno2_id = aluno2.id
            RIGHT JOIN curso ON curso.id = aluno2_curso.curso_id

-- Realizando um Full Join (Trás todos os valores de todas as tabelas,
-- que não tenha correspondencia nas outras tabelas)
SELECT aluno2.nome as "Nome do Aluno",
       curso.nome as "Nome do Curso"
        FROM
            aluno2
            FULL JOIN aluno2_curso ON aluno2_curso.aluno2_id = aluno2.id
            FULL JOIN curso ON curso.id = aluno2_curso.curso_id

-- Realizando um Cross Join (Cruza todos os valores de uma tabela com
-- todos os valores de outra tabela)
SELECT aluno2.nome as "Nome do Aluno",
       curso.nome as "Nome do Curso",
        FROM aluno2
            CROSS JOIN curso