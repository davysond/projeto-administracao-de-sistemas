CREATE DATABASE IF NOT EXISTS monitoring_db;

USE monitoring_db;

CREATE TABLE IF NOT EXISTS exemplo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor INT
);

INSERT INTO exemplo (nome, valor) VALUES ('Dado 1', 10);
INSERT INTO exemplo (nome, valor) VALUES ('Dado 2', 20);
INSERT INTO exemplo (nome, valor) VALUES ('Dado 3', 30);
