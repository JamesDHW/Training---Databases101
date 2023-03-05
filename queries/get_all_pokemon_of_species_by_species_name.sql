-- JOIN docs: https://www.postgresql.org/docs/current/tutorial-join.html
SELECT 
    pokemon_species.id, 
    pokemon_species.name, 
    pokemon.level, 
    pokemon.health_points, 
    pokemon.nickname
FROM 
    pokemon JOIN pokemon_species ON species=pokemon_species.id
    WHERE name='Pikachu';