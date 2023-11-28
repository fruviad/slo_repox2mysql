delete from dataSourceState;
delete from metadataSchemaVersions;
delete from metadataSchemas;
delete from metadataTransformation;
delete from oldTasks;
delete from provider;
delete from providerContact;
delete from recordcount;
delete from scheduledTasks;
delete from setRights;
delete from source;
delete from username;

source lib/analyze-tables.sql;

select table_name,table_rows from information_schema.tables where table_schema='slo_aggregator';

