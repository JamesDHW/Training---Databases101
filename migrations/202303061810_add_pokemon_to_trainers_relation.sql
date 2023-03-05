
-- ALTER TABLE docs: https://www.postgresql.org/docs/current/sql-altertable.html
-- ADD NON-NULL REFERENCE to pokemon_trainers, with default as Ash Ketchum
ALTER TABLE pokemon 
    ADD trainer INT REFERENCES pokemon_trainers(id) 
    NOT NULL DEFAULT 1;