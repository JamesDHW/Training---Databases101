-- SELECT docs: https://www.postgresql.org/docs/current/sql-select.html
-- species is a foreign key
EXPLAIN ANALYZE
SELECT species FROM pokemon WHERE species=151;