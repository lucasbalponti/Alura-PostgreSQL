-- INSERINDO UM REGISTRO

-- Caso todos os campos sejam inseridos, não é necessário
-- deixar explicito o nome dos campos. Caso contário, é preciso
-- explicitar o nome dos campos.

INSERT INTO aluno (
    nome,
    cpf,
    observacao,
    idade,
    dinheiro,
    altura,
    ativo,
    data_nascimento,
    hora_aula,
    matriculado_em
) 
VALUES (
    'Diogo',
    '12345678901',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    35,
    100.50,
    1.81,
    TRUE,
    '1984-08-27',
    '17:30:00',
    '2023-04-02 14:35:00'
);

-- EDITANDO UM REGISTRO

-- Realizando um select antes para validar as colunas a serem alteradas:
-- SELECT * FROM aluno where id = 1;

UPDATE aluno
    SET 
        nome = 'Nico',
        cpf = '10987654321',
        observacao = 'Teste',
        idade = 38,
        dinheiro = 15.23,
        altura = 1.90,
        ativo = FALSE,
        data_nascimento = '1980-01-15',
        hora_aula = '13:00:00',
        matriculado_em = '2023-01-02 15:00:00';

-- EXCLUINDO UM REGISTRO

-- Realizando um select antes para validar as colunas a serem alteradas:
-- SELECT * FROM aluno where nome = 'Nico';

DELETE FROM aluno WHERE nome = 'Nico';