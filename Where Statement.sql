--equal
SELECT * FROM EmployeeDemographics WHERE FirstName = 'Tommy'

--not equal
SELECT * FROM EmployeeDemographics WHERE FirstName <> 'Tommy' 

--greater than
SELECT * FROM EmployeeDemographics WHERE Age > 30 

--greater than equal
SELECT * FROM EmployeeDemographics WHERE Age >= 30 

--less than
SELECT * FROM EmployeeDemographics WHERE Age < 32

--less than equal
SELECT * FROM EmployeeDemographics WHERE Age <= 32

--AND
SELECT * FROM EmployeeDemographics WHERE Age <= 32 AND Gender = 'Male'

--OR
SELECT * FROM EmployeeDemographics WHERE Age <= 32 OR Gender = 'Male'

--Search LastName has 'S' in first one
SELECT * FROM EmployeeDemographics WHERE LastName LIKE 'S%'

--Search LastName has 'S' everywhere
SELECT * FROM EmployeeDemographics WHERE LastName LIKE '%S%'

--LastName has 'S' and 'o'
SELECT * FROM EmployeeDemographics WHERE LastName LIKE 'S%o%'

-- NULL
SELECT * FROM EmployeeDemographics WHERE FirstName IS NULL 

--NOT NULL
SELECT * FROM EmployeeDemographics WHERE FirstName IS NOT NULL

--IN
SELECT * FROM EmployeeDemographics WHERE FirstName IN ('Tommy','Angela')