Create DATABASE IF NOT EXISTS quasar_db;

USE quasar_db;

DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
    is INT UNSIGNED NOT NULL AUTO_INCREMENT,
    pet_name VARCHAR(30) NOT NULL,
    owner_name VARCHAR(30),
    age INT,
    PRIMARY KEY (id)
);