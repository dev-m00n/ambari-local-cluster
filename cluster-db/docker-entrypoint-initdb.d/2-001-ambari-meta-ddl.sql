\connect hadoop;
set schema 'ambari';
\i /docker-entrypoint-initdb.d/ambari/Ambari-DDL-Postgres-CREATE.sql
