SELECT FirstName, LastName, Gender,Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS Total_Gender 
FROM EmployeeDemographics AS Demo 
JOIN EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID