--@block
CREATE TABLE Students(
    student_id INT PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    age INT,
    gender CHAR(1),
    doa DATE,
    city VARCHAR(100)
);
--@block
INSERT INTO Students(student_id, firstName, lastName, age, gender, doa, city) 
VALUES
    (101, 'James', 'Musonda', 35, 'M', '2024-01-29', 'Lusaka'),
    (203, 'Mercy', 'Michelo', 45, 'F', '2024-01-29', 'Lusaka'),
    (333, 'John', 'Mulenga', 50, 'M', '2024-01-29','Kitwe'),
    (421, 'Bright', 'Kabwe', 25, 'M', '2024-03-29', 'Chipata'),
    (520, 'Stephen', 'Kabwe', 67, 'M', '2024-01-26', 'Chingola'),
    (600, 'Rozen', 'Chanda', 27, 'F', '2024-01-20', 'Chipata'),
    (776, 'Brighton', 'Hakabwe', 78, 'M', '2024-01-15', 'Ndola'),
    (856, 'Cassious', 'James', 61, 'M', '2024-01-10', 'Livingstone'),
    (991, 'Charity', 'Siame', 45, 'F', '2024-01-10', 'Mazabuka'),
    (1054, 'Jeremaih', 'Siame', 37, 'M', '2024-01-12', 'Ndola');

--@block
SELECT * FROM students WHERE age BETWEEN 20 AND 60;


