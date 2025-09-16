create database sampledb1;
USE sampledb1;
CREATE TABLE students (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    course VARCHAR(100),
    PRIMARY KEY (id)
);
INSERT INTO students (name, age, course) VALUES
('Amit Kumar', 21, 'Computer Science'),
('Riya Sharma', 22, 'Biotechnology'),
('Kavya sahoo', 25, 'Cloud Computing'),
('Rahul Verma', 20, 'Mathematics'),
('Sneha Patnaik', 23, 'Data Science');
SELECT * FROM students;





