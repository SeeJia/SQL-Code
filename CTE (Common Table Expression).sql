WITH CTE_Employee AS(
    SELECT 
    FirstName + ' ' + LastName AS FullName,
    Salary, 
    AVG(Salary) OVER (PARTITION BY Salary) AS AverageSalary
    FROM EmployeeDemographics AS Demo
    JOIN EmployeeSalary AS Sal
    ON Demo.EmployeeID = Sal.EmployeeID
)

SELECT FullName, AverageSalary FROM CTE_Employee