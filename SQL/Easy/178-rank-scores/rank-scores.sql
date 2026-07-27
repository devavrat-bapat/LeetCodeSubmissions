/* Write your T-SQL query statement below */

SELECT score, DENSE_RANK() OVER(ORDER BY score desc) as rank
FROM
Scores
order by score desc