create TABLE IF NOT EXISTS Transform_TranscriptDB_schema.Transcript (
    id SERIAL PRIMARY KEY,
    --put my columns here. no null values allowed. Simplest version:

    -- course title, not null, maybe 250 characters?
    -- course code, not null, maybe 50 characters?
    -- year completed, not null, year type: example: 1999, 2025.
    -- credit, not null, decminal type. 0.0 through 20.0.  round to one decimal place.
    --grade: not null. single charaxter. capital: A,B,C,D,F. Assuming American Grading System for simplicity.


    --how do I handle null values?
);
