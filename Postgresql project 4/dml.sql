set search_path to stackoverflow_filtered;
--cities that appeared more than twice
select Count(*) from 
(select city
from "result" 
group by city
having Count >2
);
--unique created_at in the table
select Count (distinct data(users_created_at)) from result;

--if you were to give an award to a user who will it be?
select display_name, answers_score from "result" 
order by answers_score desc
limit 1;
