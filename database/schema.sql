-- 1. Tabela de Usuários (Base para Aluno e Professor)
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(20) NOT NULL -- 'ALUNO' ou 'PROFESSOR'
);

-- 2. Tabela de Itens da Biblioteca (Base para Livro, Revista e DVD)
CREATE TABLE item_biblioteca (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano_publicacao INT NOT NULL,
    disponivel BOOLEAN DEFAULT TRUE NOT NULL,
    tipo VARCHAR(20) NOT NULL, -- 'LIVRO', 'REVISTA' ou 'DVD'

    -- Campos específicos das subclasses
    autor VARCHAR(100),       -- Exclusivo para Livro
    edicao INT,               -- Exclusivo para Revista
    duracao_minutos INT       -- Exclusivo para DVD
);

-- 3. Tabela de Empréstimos (Relacionamento entre Usuário e Item)
CREATE TABLE emprestimo (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL REFERENCES usuario(id),
    item_id INT NOT NULL REFERENCES item_biblioteca(id),
    data_emprestimo TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    data_devolucao TIMESTAMP
);