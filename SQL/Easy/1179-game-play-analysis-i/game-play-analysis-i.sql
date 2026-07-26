/* Write your T-SQL query statement below */

select player_id, Min(event_date) AS first_login

from Activity

Group by player_id