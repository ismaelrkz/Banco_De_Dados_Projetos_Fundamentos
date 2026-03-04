INSERT INTO tbl_departamento
VALUES (null, 'Presidencia'),
       (null, 'Engenharia'),
       (null, 'Produto'),
       (null, 'Comercial e Marketing'),
       (null, 'Suporte e Customer Success'),
       (null, 'Administrativo e Financeiro');

INSERT INTO tbl_funcionario
    (id_func, nome_func, salario_func, depto_func, id_supervisor)
VALUES
-- Presidência
(null, 'Renata Carvalho', 21000.00, 1, NULL),
-- Engenharia
(null, 'Tatiane Moreira', 17200.00, 2, 1),
(null, 'Rafael Souza', 14500.00, 2, 2),
(null, 'Felipe Nunes', 15800.00, 2, 2),
-- Produto
(null, 'Carlos Henrique', 18500.00, 3, 1),
(null, 'Fernanda Lima', 9100.00, 3, 5),
(null, 'Larissa Pinto', 6700.00, 3, 5),
-- Comercial e Marketing
(null, 'Patricia Gomes', 13200.00, 4, 1),
(null, 'Juliana Martins', 6200.00, 4, 8),
(null, 'Bruno Rocha', 8400.00, 4, 8),
(null, 'André Oliveira', 8900.00, 4, 8),
-- Suporte e Customer Success
(null, 'Gustavo Ribeiro', 11800.00, 5, 1),
(null, 'Camila Barros', 7600.00, 5, 12),
(null, 'Diego Santos', 6000.00, 5, 12),
-- Administrativo e Financeiro
(null, 'Thiago Mendes', 9700.00, 6, 1),
(null, 'Aline Teixeira', 5400.00, 6, 15),
(null, 'Vanessa Duarte', 12500.00, 6, 15),
-- Sem departamento
(null, 'Lucas Almeida', 5200.00, NULL, 2),
(null, 'Mariana Costa', 7800.00, NULL, 5),
(null, 'Eduardo Fernandes', 4800.00, NULL, 12);

INSERT INTO tbl_projeto (id_projeto, nome_projeto, data_inicio)
VALUES (null, 'Plataforma SaaS Corporativa', '2025-01-15'),
       (null, 'Aplicativo Mobile Cliente', '2025-02-10'),
       (null, 'Migracao para Cloud', '2025-03-01'),
       (null, 'Implantacao de BI Corporativo', '2025-01-20'),
       (null, 'Programa de Seguranca da Informacao', '2025-02-05');

INSERT INTO tbl_funcionario_projeto (id_projeto, id_func)
VALUES
-- Projeto 1 (Plataforma SaaS Corporativa)
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 15),
-- Projeto 2 (Aplicativo Mobile Cliente)
(2, 2),
(2, 3),
(2, 6),
(2, 7),
(2, 16),
-- Projeto 3 (Migracao para Cloud)
(3, 1),
(3, 2),
(3, 3),
(3, 12),
(3, 18),
-- Projeto 4 (Implantacao de BI Corporativo)
(4, 5),
(4, 9),
(4, 15),
(4, 17),
-- Projeto 5 (Programa de Seguranca da Informacao)
(5, 1),
(5, 3),
(5, 12),
(5, 15);
