-- script that creates an index idx_name_first on the
--table names and the first letter of name

ALTER TABLE names
ADD first_letter CHAR(1) GENERATED ALWAYS AS (LEFT(name, 1)) STORED;

CREATE INDEX index_name_first
ON names (first_letter, score);
