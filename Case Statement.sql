SELECT FirstName, LastName, Age,
CASE
    WHEN Age > 30 THEN 'Old'
ELSE 'Young'
END
FROM EmployeeDemographics

SELECT FirstName, LastName, JobTitle, Salary,
CASE
    WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
    WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
    WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
    ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM EmployeeDemographics
JOIN EmployeeSalary 
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID