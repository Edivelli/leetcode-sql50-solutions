# Write your MySQL query statement belowwith
SELECT w1.id FROM Weather AS w1 JOIN Weather AS w2 ON datediff(w1.recordDate, w2.recordDate)=1
WHERE w1.temperature>w2.temperature;