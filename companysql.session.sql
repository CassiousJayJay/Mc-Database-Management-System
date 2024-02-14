--@block
CREATE TABLE Employee(
    employe_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthday DATE,
    sex CHAR(1),
    salary INT,
    supper_id INT,
    branch_id INT
);
--@block
CREATE TABLE Branch(
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(50),
    manager_id INT,
    manager_start_date DATE,
    FOREIGN KEY(manager_id) 
    REFERENCES Employee(employe_id) on DELETE SET NULL
);

--@block
ALTER TABLE employee 
ADD FOREIGN KEY(branch_id) 
REFERENCES Branch(branch_id);

--@block
ALTER TABLE employee 
ADD FOREIGN KEY(supper_id) 
REFERENCES Employee(employe_id);


--@block
CREATE TABLE Client(
    client_id INT PRIMARY KEY,
    client_name VARCHAR(100),
    branch_id INT,
    FOREIGN KEY(branch_id) 
    REFERENCES Branch(branch_id)
    ON DELETE SET NULL
);

--@block
CREATE TABLE Works_with(
    employe_id INT,
    FOREIGN KEY(employe_id) REFERENCES
    Employee(employe_id)
    ON DELETE CASCADE,
    client_id INT,
    FOREIGN KEY(client_id)
    REFERENCES Client(client_id)
    ON DELETE CASCADE,
    total_sales INT
);

--@block
DROP TABLE branch;
