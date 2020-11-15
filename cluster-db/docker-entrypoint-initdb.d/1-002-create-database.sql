-- Create hadoop related db
CREATE database hadoop;

-- Hive db
CREATE database hive WITH OWNER hive;
GRANT ALL PRIVILEGES ON DATABASE hive to hive;

-- Oozie db
CREATE database oozie WITH OWNER oozie;
GRANT ALL PRIVILEGES ON DATABASE oozie to oozie;
