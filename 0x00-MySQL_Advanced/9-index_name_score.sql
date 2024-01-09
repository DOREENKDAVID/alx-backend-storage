-- script that creates an index idx_name_first on the
-- table names and the first letter of name

CREATE INDEX index_name_first_score
ON names(name(1), score);
