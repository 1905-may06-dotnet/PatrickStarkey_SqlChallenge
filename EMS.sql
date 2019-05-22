CREATE DATABASE EMS
GO
CREATE TABLE Department(
ID INT,
Name VARCHAR(30),
LOCATION VARCHAR(40)
PRIMARY KEY (ID)
)
GO
CREATE TABLE Employee(
ID INT,
FirstName VARCHAR(12),
LastName VARCHAR(15),
SSN VARCHAR(10),
DeptID INT
PRIMARY KEY(ID)
FOREIGN KEY (DeptID) REFERENCES Department(ID)
)
GO
CREATE TABLE EmpDetails (
    ID INT IDENTITY,
    Salary DECIMAL,
    Address1 VARCHAR(30),
    Address2 VARCHAR(30),
    city  VARCHAR(30),
    State VARCHAR(2),
    Country VARCHAR(3),
    EmployeeID INT
    PRIMARY KEY (ID)
    FOREIGN KEY (EmployeeID) REFERENCES Employee(ID)
)
GO
    INSERT into Department(ID,Name,LOCATION) 
    VALUES(1, 'Marketing','Arlington' )
GO
    INSERT into Department(ID,Name,LOCATION) 
    VALUES(2, 'Accounting','Dallas' )
GO
        INSERT into Department(ID,Name,LOCATION) 
        VALUES(3, 'Salesmen','Houston' )
GO
    INSERT into Employee(ID,FirstName,LastName,SSN,DeptID) 
    VALUES(16,'John','Doe','462558811',1 )
GO
    INSERT into Employee(ID,FirstName,LastName,SSN,DeptID) 
    VALUES(17,'Jane','Doe','4625538811',2 )
GO
    INSERT into Employee(ID,FirstName,LastName,SSN,DeptID) 
    VALUES(15,'Tim','Enchanter','432558811',3 )

GO
    INSERT into EmpDetails(Address1,city,State,Country,EmployeeID) 
    VALUES('1 Center St.','Arlington','TX','US',16)
GO
    INSERT into EmpDetails(Address1,city,State,Country,EmployeeID) 
    VALUES('1 Center St.','Arlington','TX','US',17)
GO
    INSERT into EmpDetails(Address1,city,State,Country,EmployeeID) 
    VALUES('1 Center St.','Arlington','TX','US',15)
GO
        INSERT into Department(ID,Name,LOCATION) 
        VALUES(4, 'IT','Houston' )
GO
    INSERT into Employee(ID,FirstName,LastName,SSN,DeptID) 
    VALUES(120,'Tina','Smith','432558811',1 )
GO
    SELECT * 
    FROM Employee 
    LEFT JOIN Department on Employee.DeptID=Department.ID
    WHERE Department.Name='Marketing'
GO
    SELECT Sum(EmpDetails.Salary) 
    FROM EmpDetails
    Left JOIN Employee on EmpDetails.EmployeeID=Employee.ID
    LEFT JOIN Department 
    on Employee.DeptID=Department.ID
    WHERE Department.Name='Marketing'
