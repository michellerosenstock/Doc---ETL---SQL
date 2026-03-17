--create an SQL database consisting of 1 table. 
--pull values from a csv file to populate blank SQL table.


CREATE TABLE dbo.Transcript_table (
  courseID INT PRIMARY KEY,
  YearCompleted YEAR NOT NULL,
  CourseTitle VARCHAR(50) NOT Null,
  Credit DECIMAL(3,2) NOT NULL,
  LetterGrade CHAR(1), NOT NULL
);
