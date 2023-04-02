-- DELETE CASCADE

-- Quando há relações entre as tabelas, não é possível excluir entradas
-- diretamente

-- Para isso, é preciso utilizar o CASCADE

-- Recriando a tabela aluno2_curso utilizando ON DELETE CASCADE:

DROP TABLE aluno2_curso;

CREATE TABLE aluno2_curso(
    aluno2_id INTEGER,
    curso_id INTEGER,
    PRIMARY KEY (aluno2_id, curso_id),

    FOREIGN KEY (aluno2_id)
        REFERENCES aluno2(id)
        ON DELETE CASCADE,
    
    FOREIGN KEY (curso_id)
        REFERENCES curso(id)
);

INSERT INTO aluno2_curso (aluno2_id, curso_id) VALUES(1,1);
INSERT INTO aluno2_curso (aluno2_id, curso_id) VALUES(2,1);
INSERT INTO aluno2_curso (aluno2_id, curso_id) VALUES(2,2);

-- UPDATE CASCADE

-- Quando há relações, também não é possível atualizar entradas diretamente

-- Novamente, é necessário utilizar o CASCADE para isso

-- Recriando a tabela aluno2_curso utilizando ON UPDATE CASCADE

DROP TABLE aluno2_curso;

CREATE TABLE aluno2_curso(
    aluno2_id INTEGER,
    curso_id INTEGER,
    PRIMARY KEY (aluno2_id, curso_id),

    FOREIGN KEY (aluno2_id)
        REFERENCES aluno2(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    
    FOREIGN KEY (curso_id)
        REFERENCES curso(id)
);

INSERT INTO aluno2_curso (aluno2_id, curso_id) VALUES(1,1);
INSERT INTO aluno2_curso (aluno2_id, curso_id) VALUES(2,1);
INSERT INTO aluno2_curso (aluno2_id, curso_id) VALUES(2,2);