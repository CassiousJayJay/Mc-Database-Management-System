--@block
CREATE TABLE Books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author_id INT,
    FOREIGN KEY(author_id) REFERENCES Authors(author_id),
    genre VARCHAR(100),
    publication_year INT
);

--@block
INSERT INTO Books(title, genre, publication_year)
VALUES('Ninten eight four', 'Fiction', 1984),
    ('The hand maid tales', 'Fiction', 2000);

--@block
SELECT * FROM Books;

--@block
CREATE TABLE Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100)
);

--@block
INSERT INTO Authors(author_id, author_name)
VALUES(3, 'James'),
    (5, 'Mark')

--@block
SELECT * FROM Authors;

--@block
CREATE TABLE Members(
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(100),
    adress VARCHAR(100),
    email VARCHAR(100)
);

--@block
INSERT INTO Members(member_name, adress, email)
VALUES('John', 'lusaka', 'john@gmail.com'),
    ('Mercy', 'chipata', 'mercy@gmail.com'),
    ('mark', 'kitwe', 'mark@gmail.com');

--@block
SELECT * FROM members;

--@block
CREATE TABLE BorrowedBooks(
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    member_id INT,
    FOREIGN KEY(member_id) REFERENCES Members(member_id),
    borrow_date INT,
    return_date INT
);

--@block
INSERT INTO BorrowedBooks(borrow_date, return_date)
VALUES(2024-01-12, 2024-01-25),
    (2024-02-15, 2024-03-05),
    (2024-03-15, 2024-04-20);

--@block
SELECT * FROM borrowedbooks;

--@block
DROP TABLE borrowedbooks;



