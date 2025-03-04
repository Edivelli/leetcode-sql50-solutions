SELECT query_name, round(avg(rating/position),2) AS quality, round((count(IF(rating < 3, 1, NULL)) *100 / count(*)), 2) AS poor_query_percentage FROM Queries
GROUP BY query_name;