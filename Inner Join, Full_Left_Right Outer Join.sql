--INNER JOIN, FULL/LEFT/RIGHT OUTER JOIN

SELECT * FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON
EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT * FROM EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
ON
EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT * FROM EmployeeDemographics
LEFT OUTER JOIN EmployeeSalary
ON
EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT * FROM EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
ON
EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID