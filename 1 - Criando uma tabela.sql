-- Campos númericos
-- integer: inteiro positivo ou negativo
-- real: real com até 4 casa decimais
-- serial: inteiro positivo com incremento automático
-- numeric: pode ser definida a precisão

-- Campos do tipo "string"
-- varchar(n): string com limite de tamanho
-- char(n): string com tamanho exato
-- text: string sem limitação

-- Campo booleano
-- boolean

-- Campos de data e hora
-- date: data
-- time: hora
-- timestamp: data e hora

CREATE TABLE aluno (
    id SERIAL,
    nome VARCHAR(255),
    cpf CHAR(11),
    observacao TEXT,
    idade INTEGER,
    dinheiro NUMERIC(10,2),
    altura REAL,
    ativo BOOLEAN,
    data_nascimento DATE,
    hora_aula TIME,
    matriculado_em TIMESTAMP
)