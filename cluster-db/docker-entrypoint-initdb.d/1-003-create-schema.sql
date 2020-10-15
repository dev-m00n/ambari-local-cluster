\connect hadoop

-- Create Ambari schema
CREATE SCHEMA IF NOT EXISTS ambari AUTHORIZATION ambari;

-- Grant all privileges to ambari for newly created tables
ALTER DEFAULT PRIVILEGES IN SCHEMA ambari GRANT ALL ON TABLES TO ambari;

-- Switch owner to ambari
ALTER SCHEMA ambari OWNER TO ambari;

-- Make ambari be able to query without specify schema
ALTER ROLE ambari SET search_path TO 'ambari', 'public';

