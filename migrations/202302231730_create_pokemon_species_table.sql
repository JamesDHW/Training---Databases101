-- CREATE TABLE docs: https://www.postgresql.org/docs/current/sql-createtable.html
CREATE TABLE IF NOT EXISTS pokemon_species (

    -- SERIAL docs: https://www.postgresql.org/docs/current/datatype-numeric.html#DATATYPE-SERIAL
    id      SERIAL          PRIMARY KEY,

    -- CONSTRAINTS docs: https://www.postgresql.org/docs/current/ddl-constraints.html
    -- VARCHAR docs: https://www.postgresql.org/docs/current/datatype-character.html
    name    VARCHAR(50)    UNIQUE NOT NULL
)