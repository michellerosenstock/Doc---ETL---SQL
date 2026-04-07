#!/bin/bash



DATABASE="transform_transcriptdb"
URL="https://raw.githubusercontent.com/michellerosenstock/Doc---ETL---SQL/main/SQL%20Source/happy_path_transcript.csv"
FILE="happiest_path_transcript.csv"

curl -o "$FILE" "$URL"

# load into Postgres staging table
psql -d "$DATABASE" -c "\copy staging_table (course_title, course_code, year_completed, credit, grade) FROM '$FILE' WITH (FORMAT csv, DELIMITER '|', HEADER true);"