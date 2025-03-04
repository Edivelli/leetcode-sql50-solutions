# Write your MySQL query statement below
SELECT E.name FROM Employee E JOIN Employee m ON E.id = m.managerId
GROUP BY E.id
HAVING count(m.id) >=5;