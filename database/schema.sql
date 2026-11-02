-- 1. Tabela item
CREATE TABLE item (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    codigo VARCHAR(50) NOT NULL UNIQUE,
    titulo VARCHAR(150) NOT NULL,
    tipo VARCHAR(20) NOT NULL CHECK (tipo IN ('LIVRO', 'REVISTA')),
    autor VARCHAR(100),
    edicao INT,
    disponivel BOOLEAN DEFAULT TRUE NOT NULL
);

-- 2. Tabela usuario
CREATE TABLE usuario (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(20) NOT NULL CHECK (tipo IN ('ALUNO', 'PROFESSOR')),
    limite_itens INT NOT NULL
);

-- 3. Tabela emprestimo
CREATE TABLE emprestimo (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    item_id INT NOT NULL REFERENCES item(id),
    usuario_id INT NOT NULL REFERENCES usuario(id),
    data_retirada TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    data_devolucao_prevista TIMESTAMP NOT NULL,
    data_devolucao TIMESTAMP,
    valor_multa NUMERIC(10,2) DEFAULT 0.00
);

-- Inserção de dados de teste
INSERT INTO item (codigo, titulo, tipo, autor, edicao, disponivel) VALUES
('LIV-001', 'Clean Code', 'LIVRO', 'Robert C. Martin', 1, FALSE),
('LIV-002', 'Arquitetura Limpa', 'LIVRO', 'Robert C. Martin', 1, TRUE),
('REV-001', 'National Geographic', 'REVISTA', NULL, 150, FALSE),
('REV-002', 'SuperInteressante', 'REVISTA', NULL, 420, TRUE);

INSERT INTO usuario (nome, tipo, limite_itens) VALUES
('Ana Souza', 'ALUNO', 3),
('Carlos Silva', 'PROFESSOR', 5);

INSERT INTO emprestimo (item_id, usuario_id, data_retirada, data_devolucao_prevista, data_devolucao, valor_multa) VALUES
(1, 1, CURRENT_TIMESTAMP - INTERVAL '5 days', CURRENT_TIMESTAMP + INTERVAL '10 days', NULL, 0.00),
(3, 2, CURRENT_TIMESTAMP - INTERVAL '20 days', CURRENT_TIMESTAMP - INTERVAL '5 days', CURRENT_TIMESTAMP - INTERVAL '6 days', 0.00);