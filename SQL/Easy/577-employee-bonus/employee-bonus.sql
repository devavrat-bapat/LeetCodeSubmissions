/* Write your T-SQL query statement below */

SELECT emp.name , bns.bonus

FROM Employee emp
LEFT JOIN Bonus bns ON bns.empId = emp.empId

WHERE bonus < 1000 OR bonus IS NULL