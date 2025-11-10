/* find the average score for each country
consedering only customers with a score not equal to 0
and return only those countries with and average score greater than 430
*/
SELECT
COUNTRY,
AVG(SCORE) AS avg_score
	from customers
	where 
	score <> 0
	group by
	country
	having
	avg(score) > 430;