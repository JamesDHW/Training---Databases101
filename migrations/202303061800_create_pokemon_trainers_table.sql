-- CREATE TABLE docs: https://www.postgresql.org/docs/current/sql-createtable.html
CREATE TABLE pokemon_trainers (

    -- SERIAL docs: https://www.postgresql.org/docs/current/datatype-numeric.html#DATATYPE-SERIAL
    id          SERIAL          PRIMARY KEY,

    -- CONSTRAINTS docs: https://www.postgresql.org/docs/current/ddl-constraints.html
    -- VARCHAR docs: https://www.postgresql.org/docs/current/datatype-character.html
    username    VARCHAR(50)    UNIQUE NOT NULL
);
