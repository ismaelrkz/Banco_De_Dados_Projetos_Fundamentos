# Modelagem e Implementação de Banco de Dados Relacional
Este repositório apresenta um projeto voltado ao **processo de modelagem e implementação de um banco de dados relacional**, utilizando **SQL** como linguagem principal.

O projeto simula a estrutura organizacional de uma empresa, contemplando **departamentos**, **funcionários** e **projetos**, além dos relacionamentos existentes entre essas entidades. A proposta é demonstrar, de forma estruturada, as etapas fundamentais envolvidas na construção de um banco de dados relacional, desde a modelagem conceitual até a execução de consultas SQL.

---

# Objetivo do Projeto

O objetivo deste projeto é demonstrar de forma prática os principais conceitos relacionados a **modelagem de dados e manipulação de bancos de dados relacionais**, incluindo:

- Levantamento de requisitos
- Modelagem conceitual (baseada no Modelo Entidade-Relacionamento)
- Conversão para modelo relacional
- Implementação física utilizando SQL
- Inserção e manipulação de dados
- Execução de consultas e análises sobre os dados armazenados

---

# Estrutura do Banco de Dados

O banco de dados foi projetado para representar três entidades principais:

- **Departamentos**
- **Funcionários**
- **Projetos**

Além disso, são implementados diferentes tipos de relacionamentos comuns em sistemas corporativos:

- **Relacionamento 1:N**
  - Departamento → Funcionários
- **Auto-relacionamento (hierarquia)**
  - Funcionário → Supervisor
- **Relacionamento N:N**
  - Funcionários ↔ Projetos

O relacionamento muitos-para-muitos é resolvido por meio de uma **tabela associativa**, responsável por registrar a participação de funcionários em projetos.

---

# Estrutura das Tabelas

O modelo físico do banco de dados é composto pelas seguintes tabelas:

| Tabela | Descrição |
|------|------|
| `tbl_departamento` | Armazena os departamentos da empresa |
| `tbl_funcionario` | Cadastro de funcionários |
| `tbl_projeto` | Registro dos projetos da organização |
| `tbl_funcionario_projeto` | Tabela associativa que relaciona funcionários e projetos |

As tabelas utilizam **chaves primárias**, **chaves estrangeiras** e regras de integridade referencial para garantir consistência nos dados.

---

# Tecnologias Utilizadas

- **SQL**
- **MySQL** (compatível com outros SGBDs relacionais)
- **DataGrip** (IDE utilizada para desenvolvimento e execução das consultas)

---

# Conteúdos Demonstrados

O projeto inclui exemplos práticos envolvendo:

## Definição de Estrutura (DDL)

- `CREATE TABLE`
- `PRIMARY KEY`
- `FOREIGN KEY`
- `AUTO_INCREMENT`
- `ON DELETE`
- `ON UPDATE`

## Manipulação de Dados (DML)

- `INSERT`
- `UPDATE`
- `DELETE`
- `SELECT`

## Consultas SQL

- Seleção de dados
- Filtros com `WHERE`
- Ordenação com `ORDER BY`
- Junções (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`)
- Subconsultas (`Subqueries`)

---
## Conclusão

Este projeto apresenta, de forma prática, a construção de um banco de dados relacional, desde a modelagem inicial até sua implementação em SQL. Ao longo da documentaçao são demonstrados os principais conceitos envolvidos na definição da estrutura das tabelas, na criação dos relacionamentos entre os dados e na execução de consultas.

Para uma explicação mais detalhada sobre o projeto e os conceitos apresentados, consulte a documentação completa disponível no link indicado neste repositório.

--No repositório também estão disponíveis os arquivos `.sql` contendo todos os comandos utilizados na criação da estrutura do banco de dados, inserção de dados e execução das consultas apresentadas no projeto.

Os arquivos `.sql` contendo todos os comandos utilizados no projeto — incluindo criação das tabelas, inserção de dados e exemplos de consultas — estão disponíveis na pasta [`01_Projeto_BD_Funcionarios_Departamentos`](https://github.com/ismaelrkz/Banco_De_Dados_Projetos_Fundamentos/tree/main/01_Projeto_BD_Funcionarios_Departamentos/Projeto_BD_Funcionarios_Departamentos).

---

## Documentação Complementar

A documentação completa do projeto, contendo a explicação detalhada da modelagem, estrutura do banco de dados e exemplos de consultas SQL, está disponível no link abaixo:

**[Documentação do Projeto: Fundamentos Banco de Dados Relacional](https://www.notion.so/Fundamentos-Banco-de-Dados-305f4d816bcb8020ad2fd6d0342b8bfe?source=copy_link)**
