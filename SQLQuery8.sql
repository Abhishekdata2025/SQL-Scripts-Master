-- find the total score for each country
select
      country,
      first_name,
      sum(score) as total_score
      from customers
      group by country, first_name