CREATE TABLE funcionario (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    sexo CHAR(1),
    dt_nasc DATE,
    salario DECIMAL(10,2),
    cod_departamento INT
);

CREATE TABLE departamento (
    codigo SERIAL PRIMARY KEY,
    descricao VARCHAR(200),
    cod_gerente INT,
    FOREIGN KEY(cod_gerente) REFERENCES funcionario(codigo)
);

CREATE TABLE projeto (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(200),
    cod_depto INT,
    cod_responsavel INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY(cod_depto) REFERENCES departamento(codigo),
    FOREIGN KEY(cod_responsavel) REFERENCES funcionario(codigo)
);

CREATE TABLE atividade (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(200),
    cod_responsavel INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY(cod_responsavel) REFERENCES funcionario(codigo)
);

CREATE TABLE atividade_projeto (
    cod_atividade INT,
    cod_projeto INT,
    FOREIGN KEY(cod_atividade) REFERENCES atividade(codigo),
    FOREIGN KEY(cod_projeto) REFERENCES projeto(codigo)
);

ALTER TABLE funcionario ADD CONSTRAINT fk_dep FOREIGN KEY(cod_departamento) REFERENCES departamento(codigo);