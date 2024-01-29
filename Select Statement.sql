-- SELECT ALL DATA
SELECT * FROM EmployeeDemographics;
GO

--SELECT FirstName and LastName
SELECT FirstName, LastName From EmployeeDemographics;
GO

--Take top 5 data
SELECT TOP 5 * From EmployeeDemographics;
GO

--Show Gender types
SELECT DISTINCT(Gender) FROM EmployeeDemographics; 
GO

--Count the column and set the column name
SELECT COUNT(LastName) AS LastNameCount FROM EmployeeDemographics;
GO

--To get max value from table
SELECT MAX(Salary) AS MAX_SALARY FROM EmployeeSalary;
GO

--to get min value from table
SELECT MIN(Salary) AS MIN_SALARY FROM EmployeeSalary;
GO

--sum all the salary 
SELECT SUM(Salary) AS SUM_SALARY FROM EmployeeSalary;
GO

--average all the salary
SELECT AVG(Salary) AS AVG_SALARY FROM EmployeeSalary;
GO