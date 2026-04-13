CREATE DATABASE transform_transcriptdb IF NOT EXISTS;

CREATE SCHEMA transform_transcriptdb_schema IF NOT EXISTS;

CREATE TABLE  transform_transcriptdb_schema.transcript IF NOT EXISTS (
    id BIGINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
    course_title TEXT NOT NULL,
    course_code INT NOT NULL CHECK (course_code > 0 AND course_code < 10000),
    year_completed INT NOT NULL CHECK (year_completed BETWEEN 1600 AND 2500),
    credit DECIMAL(5,2),
    grade VARCHAR(2) NOT NULL CHECK (grade IN ('A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D+', 'D', 'D-', 'F'))
);

insert into transform_transcriptdb_schema.transcript (course_title, course_code, year_completed, credit, grade) values
    ('Introduction to Computer Science', 101, 2020, 3.00, 'A'),
    ('Data Structures', 201, 2021, 3.00, 'B+'),
    ('Algorithms', 301, 2022, 3.00, 'A-'),
    ('Database Systems', 401, 2023, 3.00, 'B'),
    ('Operating Systems', 501, 2024, 3.00, 'C+'),
    ('Communication Skills', 102, 2020, 2.00, 'A'),
    ('Calculus I', 202, 2021, 4.00, 'B-'),
    ('Calculus II', 302, 2022, 4.00, 'C'),
    ('Linear Algebra', 402, 2023, 3.00, 'B+'),
    ('Statistics', 502, 2024, 3.00, 'A'),
    ('Artificial Intelligence', 601, 2024, 3.00, 'A');


SELECT * FROM transform_transcriptdb_schema.transcript;