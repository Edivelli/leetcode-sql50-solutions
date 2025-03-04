SELECT p.project_id, e.name 
FROM Project AS p  RIGHT JOIN Employee AS e ON p.employee_id = e.employee_id;