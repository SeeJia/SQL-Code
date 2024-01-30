SELECT JobTitle, COUNT(JobTitle) AS CountJobTitle
FROM EmployeeDemographics
JOIN EmployeeSalary 
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1

SELECT JobTitle, AVG(Salary) AS AverageSalary
FROM EmployeeDemographics
JOIN EmployeeSalary 
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)