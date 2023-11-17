-- INSERT INTO docs: https://www.postgresql.org/docs/current/sql-insert.html
INSERT INTO pokemon (species, level, health_points, nickname, trainer) VALUES
    (25, 10, 30, NULL, 2),
    (25, 50, 120, 'Pika Pika', 2),
    (6, 30, 100, NULL, 2);


-- -- generate_series - took ~25s for 1000000 BUT trainer is not random
INSERT INTO pokemon (species, level, health_points, trainer)
SELECT
    floor(random() * 151 + 1)::int AS species,
    floor(random() * 100 + 1)::int AS level,
    floor(random() * 300 + 1)::int AS health_points,
    (SELECT id FROM pokemon_trainers ORDER BY random() LIMIT 1) AS trainer
FROM generate_series(1, 10) AS gs(level);

-- took ~20s for 1000000 - ~200s for 10000000
DO $$ 
DECLARE
    total_pokemon integer := 10000000; -- Adjust the total number of Pokémon as needed
    counter integer := 1;
BEGIN
    WHILE counter <= total_pokemon LOOP
        INSERT INTO pokemon (species, level, health_points, trainer)
        SELECT
            floor(random() * 151 + 1)::int AS species,
            floor(random() * 100 + 1)::int AS level,
            floor(random() * 300 + 1)::int AS health_points,
            (SELECT id FROM pokemon_trainers ORDER BY random() LIMIT 1) AS trainer;

        counter := counter + 1;
    END LOOP;
END $$;


-- DELETE from pokemon WHERE id>0;