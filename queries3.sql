USE school;
CREATE TABLE Managers (
  Manager_Id INT PRIMARY KEY,
  First_name VARCHAR(20),
  Last_Name VARCHAR(20),
  DOB DATE,
  Age INT CHECK (Age > 0),
  Last_update DATE,
  Gender VARCHAR(10),
  Department VARCHAR(25),
  Salary DECIMAL NOT NULL
);

INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age, Last_update, Gender, Department, Salary)
VALUES
  (1, 'Aparna', 'Sukesh', '2000-07-23', 22, '2023-10-03', 'Female', 'IT', 40000.00),
  (2, 'Rahul', 'K', '2000-07-23', 23, '2023-10-03', 'Male', 'IT', 50000.00),
  (3, 'Anusha', 'Y', '2000-10-02', 37, '2023-10-03', 'Female', 'HR', 35000.00),
  (4, 'Jazzim', 'Muhammed', '1999-09-11', 25, '2023-10-03', 'Male', 'Marketing', 25000.00),
  (5, 'Kiran', 'C', '1999-11-28', 26, '2023-10-03', 'Male', 'Finance', 39000.00),
  (6, 'Sara', 'Khan', '1990-10-25', 32, '2023-10-03', 'Female', 'IT', 34000.00),
  (7, 'Virat', 'Kohili', '1985-04-16', 33, '2023-06-04', 'Male', 'Sales', 42000.00),
  (8, 'Rohit', 'Sharma', '1987-04-25', 36, '2023-06-07', 'Male', 'Finance', 47000.00),
  (9, 'Suresh', 'Raina', '1986-08-08', 36, '2023-06-06', 'Male', 'IT', 39000.00),
  (10, 'Ravindra', 'Jadeja', '1992-01-01', 30, '2023-06-10', 'Male', 'Sales', 41000.00);

SELECT First_name, Last_Name, DOB FROM Managers WHERE Manager_Id = 1;

SELECT First_name, Last_Name, Salary * 12 AS Annual_Income FROM Managers;

SELECT * FROM Managers WHERE First_name != 'Aaliya';

SELECT * FROM Managers WHERE Department = 'IT' AND Salary > 25000;

SELECT * FROM Managers WHERE Salary BETWEEN 10000 AND 35000;

