SELECT u.unique_id, s.name 
FROM Employees AS s  
LEFT JOIN EmployeeUNI AS u ON u.id = s.id;