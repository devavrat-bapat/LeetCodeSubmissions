CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
    SELECT MAX(salary) from
    (
    SELECT salary, DENSE_RANK() OVER(ORDER BY SALARY DESC) AS RN
    FROM Employee) salTab
    WHERE RN = @N

    );
END