# Write your MySQL query statement below
SELECT * FROM cinema WHERE Mod(id,2)=1 and  
 description<>'boring'
ORDER BY rating DESC;