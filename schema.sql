CREATE DATABASE TransformDB;

CREATE TABLE TransformDB.TranscriptStage (
    id SERIAL PRIMARY KEY,
    --course title
    --course code
    --year completed
    --credit
    --grade
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
