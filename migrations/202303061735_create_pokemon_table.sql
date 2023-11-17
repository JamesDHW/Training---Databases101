-- CREATE TABLE docs: https://www.postgresql.org/docs/current/sql-createtable.html
CREATE TABLE pokemon (

    -- SERIAL docs: https://www.postgresql.org/docs/current/datatype-numeric.html#DATATYPE-SERIAL
    id              SERIAL          PRIMARY KEY,

    -- FOREIGN KEY CONSTRAINT docs: https://www.postgresql.org/docs/current/ddl-constraints.html#DDL-CONSTRAINTS-FK
    -- FOREIGN KEY CONSTRAINT tutorial: https://www.postgresql.org/docs/current/tutorial-fk.html
    species         INT             REFERENCES pokemon_species(id) NOT NULL,

    -- CONSTRAINTS docs: https://www.postgresql.org/docs/current/ddl-constraints.html
    health_points   INT             NOT NULL DEFAULT 0,
    level           INT             NOT NULL DEFAULT 1,
    nickname        VARCHAR(50)
)