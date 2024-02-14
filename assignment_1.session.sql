--@block
CREATE TABLE Authors(
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR (50) NOT NULL
);
--@block
INSERT INTO Authors(author_name)
VALUES
    ('James'),
    ('Cassious'),
    ('Mark');

--@block
CREATE TABLE Member(
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(50),
    address VARCHAR(100),
    email VARCHAR(100)
);

--@block
INSERT INTO Member(member_name, address, email)
VALUES
    ('James', 'Hippo street, Lusaka', 'james@gmail.com'),
    ('Cassious', 'Kaleni street, Kitwe', 'cassious@gmail.com'),
    ('Mark', 'zebra street, livingstone', 'mark@gmail.com');

--@block
SELECT * FROM authors;


--@block
CREATE TABLE Books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author_id INT,
    FOREIGN KEY(author_id) REFERENCES Authors(author_id),
    genre VARCHAR(100),
    publication_year YEAR
);
--@block
ALTER TABLE Books 
ADD publication_year INT;

--@block
INSERT INTO Books(title, author_id, genre, publication_year)
VALUES('The Day Tripper', 1, 'Science Fiction', 2000),
    ('The Clinic', 2, 'Mystery', 1854),
    ('The Silent Patient', 3, 'Mystery', 2001);

--@block
CREATE TABLE BorrowedBooks(
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    FOREIGN KEY(book_id) REFERENCES Books(book_id),
    member_id INT,
    FOREIGN KEY(member_id) REFERENCES Member(member_id),
    borrow_date DATE,
    return_date DATE
);

--@block
INSERT INTO BorrowedBooks(book_id, member_id, borrow_date, return_date)
VALUES(13, 1, '2024-02-12', '2024-03-15'),
    (14, 2, '2023-05-17', '2024-03-10'),
    (15, 3, '2000-04-05', '2000-10-19');

--@block
SELECT 
INNER JOIN Authors
ON Author.author_id = Books.book_id;