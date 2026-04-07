--input: CSV File outputed by Python script
--loads the the data from the CSV file into a staging table
--normalizes the data.
--outputs the data into a cleaned table.

CREATE TABLE transcripts_raw (
    id SERIAL PRIMARY KEY,
    file_name TEXT,
    pdf_data BYTEA
);

INSERT INTO transcripts_raw (file_name, pdf_data)
VALUES (
    'transcript.pdf',
    pg_read_binary_file('~/Desktop/Doc---ETL---SQL/transcript.pdf')
);

