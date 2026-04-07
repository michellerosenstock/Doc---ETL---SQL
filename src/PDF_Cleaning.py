# loads PDF
# extracts transcript from PDF
# places transxcript into CSV file.
# sql tutorial for csv to table -using this video as a resource: https://www.youtube.com/watch?v=7LtwHSilDfU
copy FROM '/local/path/to/data.pdf' WITH (FORMAT pdf);
