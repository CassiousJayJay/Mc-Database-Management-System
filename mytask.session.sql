--@block
CREATE TABLE workers(
    person_id INT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    city VARCHAR(50),
    doa DATE
);
--@block
INSERT INTO workers(person_id, firstName, lastName, city, doa)
VALUES(1, 'John', 'Bwale', 'Lusaka', '2024-01-30'),
    (3, 'James', 'Kabwe', 'kitwe', '2024-03-20')
--@block
SELECT  firstName FROM workers;

--@block
DROP TABLE workers;