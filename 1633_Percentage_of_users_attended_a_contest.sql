WITH total_users AS (
    SELECT COUNT(user_id) AS total FROM Users
)
SELECT r.contest_id,
       ROUND(COUNT(DISTINCT r.user_id) * 100.0 / t.total, 2) AS percentage
FROM Register r
CROSS JOIN total_users t
GROUP BY r.contest_id, t.total
ORDER BY percentage DESC, contest_id;
