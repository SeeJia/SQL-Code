SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age
FROM EmployeeDemographics AS Demo
LEFT JOIN EmployeeSalary AS Sal 
ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN WareHouseEmployeeDemographics AS Ware
ON Demo.EmployeeID = Ware.EmployeeID

