create TABLE IF NOT EXISTS Transform_TranscriptDB_schema.Transcript (
    id SMALLSERIAL PRIMARY KEY,
    course_title VARCHAR(250) NOT NULL,
    course_code INT NOT NULL CHECK (course_code > 0 AND course_code < 10000),
    year_completed INT NOT NULL CHECK (year_completed BETWEEN 1900 AND 2100),
    credit DECIMAL(5,2) NOT NULL CHECK (credit >= 0.0 AND credit <= 20.0),
    grade CHAR(1) NOT NULL CHECK (grade IN ('A', 'B', 'C', 'D', 'F'))
);

