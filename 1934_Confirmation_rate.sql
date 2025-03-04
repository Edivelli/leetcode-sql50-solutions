# Write your MySQL query statement below
SELECT S.user_id, IFNULL(round((C.confirmed_count/C.total),2),0) AS confirmation_rate FROM Signups AS S LEFT JOIN (
SELECT user_id, count(action) AS total,SUM(
    CASE 
    WHEN action = 'confirmed' THEN 1
    ELSE 0
    END
) AS confirmed_count FROM Confirmations
GROUP BY user_id ) AS C ON S.user_id=C.user_id;
