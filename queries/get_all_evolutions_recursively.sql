WITH RECURSIVE evolutions AS  (
    SELECT id, name, evolves_to FROM pokemon_species WHERE name='FAKE-1'
    UNION SELECT ps.id, ps.name, ps.evolves_to FROM pokemon_species ps INNER JOIN evolutions e ON ps.id=e.evolves_to
) SELECT * FROM evolutions;
