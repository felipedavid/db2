CREATE TABLE cliente (
    codigo SERIAL PRIMARY KEY NOT NULL,
    nome VARCHAR NOT NULL,
    ENDERECO VARCHAR NOT NULL
);

CREATE TABLE piloto (
    codigo SERIAL PRIMARY KEY NOT NULL,
    nome VARCHAR NOT NULL,
    num_voos INT NOT NULL
);

CREATE TABLE voo (
    codigo SERIAL PRIMARY KEY NOT NULL,
    tipo VARCHAR NOT NULL,
    piloto_id INT NOT NULL,
    num_passageiros INT NOT NULL,
    distancia NUMERIC(10, 2) NOT NULL,
    
    FOREIGN KEY (piloto_id) REFERENCES piloto(codigo)
);

CREATE TABLE milhas (
    cliente INT PRIMARY KEY NOT NULL,
    quantidade INT NOT NULL,
    
    FOREIGN KEY (cliente) REFERENCES cliente(codigo)
);

CREATE TABLE cliente_voo (
    cliente INT NOT NULL,
    voo INT NOT NULL,
    classe CHAR(1) NOT NULL,
    
    PRIMARY KEY (cliente, voo),
    FOREIGN KEY (cliente) REFERENCES cliente(codigo),
    FOREIGN KEY (voo) REFERENCES voo(codigo)
);
