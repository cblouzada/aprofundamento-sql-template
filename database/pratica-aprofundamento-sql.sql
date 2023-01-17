-- Active: 1673958829014@@127.0.0.1@3306
1-- Conecte o arquivo pratica-aprofundamento-sql.db com a extensão MySQL e ative a conexão aqui

-- Deletar tabela

DROP TABLE pokemons;

-- Criar tabela
CREATE TABLE pokemons (
    id INTEGER PRIMARY KEY UNIQUE NOT NULL,
    name TEXT UNIQUE NOT NULL,
    type TEXT NOT NULL,
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    special_attack INTEGER NOT NULL,
    special_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL
);

-- Popular tabela
INSERT INTO pokemons (
    id,
    name,
    type,
    hp,
    attack,
    defense,
    special_attack,
    special_defense,
    speed
)
VALUES 
    (1, "bulbasaur", "grass", 45, 49, 49, 65, 65, 45),
    (2, "ivysaur", "grass", 60, 62, 63, 80, 80, 60),
    (3, "venusaur", "grass", 80, 82, 83, 100, 100, 80),
    (4, "charmander", "fire", 39, 52, 43, 60, 50, 65),
    (5, "charmeleon", "fire", 58, 64, 58, 80, 65, 80),
    (6, "charizard", "fire", 78, 84, 78, 109, 85, 100),
    (7, "squirtle", "water", 44, 48, 65, 50, 64, 43),
    (8, "wartortle", "water", 59, 63, 80, 65, 80, 58),
    (9, "blastoise", "water", 79, 83, 100, 85, 105, 78);

-- Buscar todos os pokemons
SELECT * FROM pokemons;


-- Práticas

-- Buscar pokemons que tenham speed maior que 60

SELECT * FROM pokemons
WHERE type = 'fire';

-- Buscar pokemons que tenham attack e special_attack maiores ou iguais a 60

SELECT * FROM pokemons
WHERE attack OR special_attack  >= 60;

-- Buscar pokemons que tenham na coluna name o termo “saur” no final do texto

SELECT AVG(hp) FROM pokemons; 

SELECT COUNT() FROM pokemons; 

SELECT AVG(hp) as mediaSimplesHp FROM pokemons; 

SELECT COUNT() as totalDePkemons FROM pokemons;

SELECT * FROM pokemons ORDER BY defense DESC; 

SELECT COUNT(*) as pokemonAgrupadosPorTipo, type FROM pokemons GROUP BY type;












