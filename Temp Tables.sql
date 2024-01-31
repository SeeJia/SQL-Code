DROP TABLE IF EXISTS #Temp_Employee 
CREATE TABLE #Temp_Employee(
    EmployeeID INT,
    JobTitle VARCHAR (100),
    Salary INT
)

INSERT INTO #Temp_Employee VALUES(
    1010, 'HR', 45000
)

INSERT INTO #Temp_Employee 
    SELECT * FROM EmployeeSalary


SELECT * FROM #Temp_Employee

DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2(
    JobTitle VARCHAR (50),
    EmployeesPerJob INT,
    AvgAge INT,
    AvgSalary INT
)

INSERT INTO #Temp_Employee2 
    SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
    FROM EmployeeDemographics AS Demo
    JOIN EmployeeSalary AS Sal
    ON Demo.EmployeeID = Sal.EmployeeID
    GROUP BY JobTitle

SELECT * FROM #Temp_Employee2
