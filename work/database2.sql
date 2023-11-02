CREATE TABLE Students (
    student_id serial PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    address TEXT
);
INSERT INTO Students (first_name, last_name, date_of_birth, email, phone_number, address)
VALUES
    ('John', 'Smith', '1995-03-15', 'john.smith@example.com', '123-456-7890', '123 Main St, Anytown, USA'),
    ('Jane', 'Doe', '1997-09-20', 'jane.doe@example.com', '987-654-3210', '456 Elm St, Othertown, USA'),
    ('Alice', 'Johnson', '1996-12-10', 'alice@example.com', '555-123-4567', '789 Oak St, Anycity, USA');
CREATE TABLE Courses (
    course_id serial PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT
);
INSERT INTO Courses (course_name, course_description)
VALUES
    ('Mathematics', 'Introduction to Mathematics'),
    ('History', 'World History and Civilizations'),
    ('Physics', 'Physics for Beginners'),
    ('Computer Sci', 'Introduction to Computer Science'),
    ('English', 'English Language and Literature');

SELECT COUNT(*) AS total_number_of_student FROM Courses WHERE Courses = Mathematics ;