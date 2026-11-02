SELECT codigo, titulo, tipo, disponivel
FROM item;

SELECT
    e.id AS emprestimo_id,
    u.nome AS usuario,
    i.titulo AS item,
    e.data_retirada
FROM emprestimo e
JOIN usuario u ON e.usuario_id = u.id
JOIN item i ON e.item_id = i.id
WHERE e.data_devolucao IS NULL;

SELECT
    u.nome AS usuario,
    SUM(e.valor_multa) AS total_multas
FROM usuario u
JOIN emprestimo e ON u.id = e.usuario_id
GROUP BY u.id, u.nome;

SELECT i.codigo, i.titulo, i.tipo
FROM item i
LEFT JOIN emprestimo e ON i.id = e.item_id
WHERE e.id IS NULL;