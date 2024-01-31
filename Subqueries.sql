SELECT * FROM 
EmployeeSalary

-- Subquery in Select
SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AS AllAverageSalary
FROM EmployeeSalary

-- How to do it with Partition By
SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAverageSalary
FROM EmployeeSalary

-- Subquery in From
SELECT  AvgSalary.EmployeeID, AllAverageSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAverageSalary
FROM EmployeeSalary) AS AvgSalary 

-- Subquery in Where
SELECT EmployeeID, JobTitle, Salary FROM EmployeeSalary
WHERE EmployeeID IN (SELECT EmployeeID FROM EmployeeDemographics WHERE Age > 30)
