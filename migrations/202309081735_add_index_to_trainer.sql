
-- ALTER TABLE docs: https://www.postgresql.org/docs/current/sql-altertable.html
-- ADD NON-NULL REFERENCE to pokemon_trainers, with default as Ash Ketchum
ALTER TABLE pokemon DROP COLUMN trainer;

ALTER TABLE pokemon 
    ADD trainer INT REFERENCES pokemon_trainers(id) ON DELETE CASCADE;

-- Be careful when using a DEFAULT which directly references a uuid/ serials -> probably don't use a DEFAULT for foreign key constraints
-- Be careful when using a DEFAULT which directly references a uuid/ serials -> probably don't use a DEFAULT for foreign key constraints