CREATE TABLE tbl_departamento
(
    id_depto   INT NOT NULL auto_increment,
    nome_depto VARCHAR(50),

    CONSTRAINT pk_depto PRIMARY KEY (id_depto)
);

CREATE TABLE tbl_funcionario
(
    id_func       INT NOT NULL auto_increment,
    nome_func     VARCHAR(50),
    salario_func  DOUBLE,
    depto_func    INT,
    id_supervisor INT,

    CONSTRAINT pk_func PRIMARY KEY (id_func),

    CONSTRAINT fk_func_depto FOREIGN KEY (depto_func)
        REFERENCES tbl_departamento (id_depto)
        ON DELETE SET NULL
        ON UPDATE CASCADE,

    CONSTRAINT fk_func_supervisor FOREIGN KEY (id_supervisor)
        REFERENCES tbl_funcionario (id_func)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

CREATE TABLE tbl_projeto
(
    id_projeto   INTEGER     NOT NULL AUTO_INCREMENT,
    nome_projeto VARCHAR(50) NOT NULL,
    data_inicio  DATE,

    CONSTRAINT pk_projeto PRIMARY KEY (id_projeto)
);

CREATE TABLE tbl_funcionario_projeto
(
    id_projeto INTEGER NOT NULL,
    id_func    INTEGER NOT NULL,

    CONSTRAINT pk_func_projeto PRIMARY KEY (id_projeto, id_func),

    CONSTRAINT fk_proj FOREIGN KEY (id_projeto)
        REFERENCES tbl_projeto (id_projeto)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_func FOREIGN KEY (id_func)
        REFERENCES tbl_funcionario (id_func)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
