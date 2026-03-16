-- =====================================================
-- BANCO DE DADOS
-- =====================================================

USE bd_funcionarios_departamentos;

-- =====================================================
-- CONSULTAS BÁSICAS
-- =====================================================

SELECT *
FROM tbl_departamento;

SELECT *
FROM tbl_funcionario;

SELECT *
FROM tbl_projeto;

SELECT *
FROM tbl_funcionario_projeto;

-- =====================================================
-- SELEÇÃO DE COLUNAS
-- =====================================================

SELECT nome_depto
FROM tbl_departamento;

-- =====================================================
-- CONSULTAS COM FILTRO (WHERE)
-- =====================================================

SELECT
    nome_func,
    salario_func
FROM tbl_funcionario
WHERE depto_func = 2;

SELECT
    nome_func,
    salario_func
FROM tbl_funcionario
WHERE salario_func > 10000;

SELECT
    nome_func,
    salario_func
FROM tbl_funcionario
WHERE salario_func > 5000
  AND depto_func = 2;

-- =====================================================
-- ORDENAÇÃO DE RESULTADOS (ORDER BY)
-- =====================================================

SELECT
    nome_func,
    salario_func
FROM tbl_funcionario
ORDER BY nome_func ASC;

SELECT
    nome_func,
    salario_func
FROM tbl_funcionario
ORDER BY salario_func DESC;

SELECT
    nome_func,
    salario_func,
    depto_func
FROM tbl_funcionario
ORDER BY
    depto_func ASC,
    salario_func DESC;

-- =====================================================
-- JUNÇÕES ENTRE TABELAS (JOIN)
-- =====================================================

SELECT
    f.nome_func,
    d.nome_depto
FROM tbl_funcionario f
         INNER JOIN tbl_departamento d
                    ON f.depto_func = d.id_depto;

SELECT
    d.nome_depto,
    f.nome_func
FROM tbl_departamento d
         LEFT JOIN tbl_funcionario f
                   ON d.id_depto = f.depto_func;

SELECT
    d.nome_depto,
    f.nome_func
FROM tbl_departamento d
         RIGHT JOIN tbl_funcionario f
                    ON d.id_depto = f.depto_func;

-- =====================================================
-- SUBCONSULTAS
-- =====================================================

SELECT *
FROM tbl_funcionario
WHERE id_func IN (
    SELECT DISTINCT id_supervisor
    FROM tbl_funcionario
    WHERE id_supervisor IS NOT NULL
);

-- =====================================================
-- SUBCONSULTA COM OPERADOR ALL
-- =====================================================

SELECT *
FROM tbl_funcionario
WHERE salario_func > ALL (
    SELECT salario_func
    FROM tbl_funcionario
             INNER JOIN tbl_funcionario_projeto
                        USING (id_func)
    WHERE id_projeto = 2
);