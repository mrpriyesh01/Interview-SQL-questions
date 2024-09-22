n
1
2
3
4
5
 output+
1
2
2
3
3
3
4
4
4
4
5
5
5
5
5
code=

WITH cte AS (
    SELECT n, 1 AS num_count 
    FROM number 
    UNION ALL
    SELECT n, num_count + 1 
    FROM cte 
    WHERE num_count + 1 <= n
)
SELECT n 
FROM cte 
ORDER BY n;
