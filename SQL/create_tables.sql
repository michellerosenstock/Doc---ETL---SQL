create TABLE IF NOT EXISTS transform_transcriptdb_schema.transcript (
    id BIGINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    course_title TEXT NOT NULL,
    course_code INT NOT NULL CHECK (course_code > 0 AND course_code < 10000),
    year_completed INT NOT NULL CHECK (year_completed BETWEEN 1600 AND 2500),
    credit DECIMAL(5,2) NOT NULL CHECK (credit >= 0.0 AND credit <= 20.0),
    grade VARCHAR(2) NOT NULL CHECK (grade IN ('A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D+', 'D', 'D-', 'F'))
);

