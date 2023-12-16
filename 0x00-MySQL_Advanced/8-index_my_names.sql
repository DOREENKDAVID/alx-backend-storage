-- script that creates an index idx_name_first on the
--table names and the first letter of name

DROP INDEX IF EXISTS index_name_first

CREATE INDEX index_name_first
ON names ((LEFT(name, 1));
