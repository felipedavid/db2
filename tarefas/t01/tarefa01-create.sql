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
    nome VARCHAR(50),
    descricao VARCHAR(200),
    cod_gerente INT REFERENCES funcionario(codigo)
);

CREATE TABLE projeto (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(200),
    cod_depto INT REFERENCES departamento(codigo),
    cod_responsavel INT REFERENCES funcionario(codigo),
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE atividade (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(200),
    cod_responsavel INT REFERENCES funcionario(codigo),
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE atividade_projeto (
    cod_atividade INT REFERENCES atividade(codigo),
    cod_projeto INT REFERENCES projeto(codigo)
);

