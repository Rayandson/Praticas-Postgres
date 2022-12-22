CREATE DATABASE agencia_de_viagens;

CREATE TABLE companhias(
	id SERIAL PRIMARY KEY,
	sigla TEXT NOT NULL UNIQUE,
	nome TEXT NOT NULL UNIQUE
);

CREATE TABLE aeroportos(
	id SERIAL PRIMARY KEY,
	sigla TEXT NOT NULL UNIQUE,
	nome TEXT NOT NULL UNIQUE
);

CREATE TABLE voos(
	id SERIAL PRIMARY KEY,
	sigla TEXT NOT NULL UNIQUE,
	destino TEXT NOT NULL,
	saida TIMESTAMP NOT NULL,
	chegada TIMESTAMP NOT NULL,
	companhia_id INTEGER NOT NULL REFERENCES companhias(id),
	saida_aeroporto_id INTEGER NOT NULL REFERENCES aeroportos(id),
	chegada_aeroporto_id INTEGER NOT NULL REFERENCES aeroportos(id);
);