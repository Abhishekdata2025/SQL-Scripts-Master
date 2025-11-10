-- find the totl score and total number of customer for each country.
-- find the total score for each country
select
      country,
      sum(score) as total_score,
      count(id) as total_customers
      from customers
      group by country
