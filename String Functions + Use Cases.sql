-- Drop Table EmployeeErrors;

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) AS IDLTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) AS IDRTRIM
FROM EmployeeErrors

--Using Replace

SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed 
FROM EmployeeErrors

--Using Substring

SELECT SUBSTRING(FirstName,3,3)
FROM EmployeeErrors

SELECT err.FirstName, Demo.FirstName 
FROM EmployeeErrors AS err
JOIN EmployeeDemographics AS Demo 
ON err.FirstName = Demo.FirstName

-- Using UPPER and lower

SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed 
FROM EmployeeErrors