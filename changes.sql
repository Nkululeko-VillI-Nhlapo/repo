Renaming columns in properties table
ALTER TABLE properties RENAME COLUMN weight TO atomic_mass;
ALTER TABLE properties RENAME COLUMN melting_point TO melting_point_celsius;
ALTER TABLE properties RENAME COLUMN boiling_point TO boiling_point_celsius;
Setting NOT NULL constraints on columns
ALTER TABLE properties ALTER COLUMN melting_point_celsius SET NOT NULL;
ALTER TABLE properties ALTER COLUMN boiling_point_celsius SET NOT NULL;
Adding UNIQUE and NOT NULL constraints to elements table
ALTER TABLE elements ADD CONSTRAINT unique_symbol UNIQUE (symbol);
ALTER TABLE elements ADD CONSTRAINT unique_name UNIQUE (name);
ALTER TABLE elements ALTER COLUMN symbol SET NOT NULL;
ALTER TABLE elements ALTER COLUMN name SET NOT NULL;
Creating and populating types table
CREATE TABLE types (type_id SERIAL PRIMARY KEY, type VARCHAR NOT NULL);
INSERT INTO types (type) VALUES ('metal'), ('nonmetal'), ('metalloid');
