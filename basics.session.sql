--@block
CREATE TABLE Users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    bio TEXT,
    country VARCHAR(5)
);

--@block
INSERT INTO Users(email, bio, country)
VALUES
    ('helloworld@gmail.com', 'i love computer science', 'ZM'),
    ('kabwecassious@gmail.com', 'where is your mum', 'USA'),
    ('julie@gmail.com', 'who are these guys', 'UK'),
    ('marine@gmail.com', 'i love myself', 'GM');

--@block
SELECT * FROM Users;

--@block
CREATE TABLE Rooms(
    id INT AUTO_INCREMENT,
    street VARCHAR(100),
    owner_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id)REFERENCES Users(id));

--@block
INSERT INTO rooms(owner_id, street)
VALUES
    (1, 'hippo street'),
    (1, 'kaleni street'),
    (1, 'cairo street'),
    (1, 'kasangula street');

--@block
SELECT * FROM users
LEFT JOIN rooms
ON Rooms.owner_id = Users.id;
