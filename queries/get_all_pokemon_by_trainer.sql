-- SELECT docs: https://www.postgresql.org/docs/current/sql-select.html
SELECT 
    pokemon_species.id as poke_index, 
    pokemon_species.name,
    pokemon.nickname,
    pokemon_trainers.username 
FROM 
    pokemon 
    JOIN pokemon_trainers ON pokemon.trainer=pokemon_trainers.id
    JOIN pokemon_species ON pokemon.species=pokemon_species.id
    WHERE pokemon_trainers.username='Ash Ketchum';