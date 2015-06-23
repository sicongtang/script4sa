--db2 system comand utilities
db2look -d DATABASE_NAME -e -z SCHEMA_NAME -t TABLE_NAME -ct -o FILE_NAME
db2expln -database DATABASE_NAME -t -g -q "sql_string"
db2advis -d DATABASE_NAME -n SCHEMA_NAME -t 5 -s "sql_string"
