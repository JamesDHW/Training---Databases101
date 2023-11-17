-- CREATE TABLE docs: https://www.postgresql.org/docs/current/sql-createtable.html
CREATE TABLE pokemon_types (

    -- SERIAL docs: https://www.postgresql.org/docs/current/datatype-numeric.html#DATATYPE-SERIAL
    id      SERIAL          PRIMARY KEY,

    -- CONSTRAINTS docs: https://www.postgresql.org/docs/current/ddl-constraints.html
    -- VARCHAR docs: https://www.postgresql.org/docs/current/datatype-character.html
    name    VARCHAR(50)    UNIQUE NOT NULL
);

CREATE TABLE species_types ( -- through TABLE - these are implicit in many frameworks

    species INT NOT NULL REFERENCES pokemon_species(id),
    type    INT NOT NULL REFERENCES pokemon_types(id),

    -- PRIMARY KEY constraint docs: https://www.postgresql.org/docs/current/ddl-constraints.html#DDL-CONSTRAINTS-PRIMARY-KEYS
    PRIMARY KEY(species, type)
);