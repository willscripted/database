CREATE EXTENSION IF NOT EXISTS "uuid-ossp"; -- noqa: RF05

CREATE OR REPLACE FUNCTION update_modified_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.modified = now();
    RETURN NEW;
END;

$$ LANGUAGE 'plpgsql';
