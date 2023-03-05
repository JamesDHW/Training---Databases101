-- JOIN docs: https://www.postgresql.org/docs/current/tutorial-join.html
SELECT 
    pokemon_species.id as poke_index, 
    pokemon_species.name as species, 
    pokemon.level, 
    pokemon.health_points, 
    pokemon.nickname,
    pokemon_types.name as queried_type
FROM 
    pokemon
    JOIN pokemon_species ON pokemon.species=pokemon_species.id 
    JOIN species_types   ON species_types.species=pokemon_species.id 
    JOIN pokemon_types   ON type=pokemon_types.id 
WHERE pokemon_types.name='Flying';