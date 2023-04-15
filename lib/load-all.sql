source output/create-dataSourceState.sql;
source output/create-metadataSchemas.sql;
source output/create-metadataSchemaVersions.sql;
source output/create-metadataTransformation.sql;
source output/create-oldTasks.sql;
source output/create-provider.sql;
source output/create-recordcount.sql;
source output/create-scheduledTasks.sql;
source output/create-source.sql;

source lib/analyze-tables.sql;

select table_name,table_rows from information_schema.tables where table_schema='slo_aggregator';

