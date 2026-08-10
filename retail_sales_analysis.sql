-- SQL Retail sales analysis - P1
create database sql_project_01;

-- Create Table
USE sql_project_01;
create table retail_sale(
transactions_id INT primary key,
sale_date DATE,
sale_time TIME,
customer_id INT,
gender VARCHAR(15),
age INT,
category varchar(15),
quantiy INT,
price_per_unit FLOAT,
cogs FLOAT,
total_sale FLOAT
);

-- data cleaning
select count(*) from retail_sale;

select * from retail_sale
where transactions_id is null
or 
sale_date is null
or
sale_time is null
or
customer_id is null
or 
gender is null
or 
age is null
or
category is null
or
quantiy is null
or
price_per_unit is null
or
total_sale is null
or
cogs is null;

-- data exploration
-- how many sales we have?
select count(*) as total_sale from retail_sale;

-- How many customers we have?
select 
count(distinct customer_id)
from retail_sale;

-- How many category we have?
select 
count(distinct category)
from retail_sale;

-- category name
select 
distinct category
from retail_sale;

-- Data analysis & business key problems and ans
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)


-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
select * from retail_sale;
select *
from retail_sale
where sale_date="2022-11-05";

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
select * from retail_sale
where category="Clothing"
and 
quantiy>10
and 
month(sale_date) = 11
and
year(sale_date)=2022;

-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
select category,
sum(total_sale)
from retail_sale
group by 1;

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
select * from retail_sale;
select
round(avg(age),0)
from retail_sale
where category='Beauty';


-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
select * 
from retail_Sale
where total_sale>1000;

-- Q.6 Write a SQL query to find the total number of transactions (transactions_id) made by each gender in each category.
select 
gender,
category,
count(transactions_id)
from retail_sale
group by gender,category;


-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
select * from(
select avg(total_sale),
year(sale_date),
month(sale_date),
rank() over(partition by year(sale_date) order by avg(total_sale) desc) as ranks
from retail_sale
group by month(sale_date), year(sale_date)
) as t1
where ranks=1;

-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
select customer_id,
  sum(total_sale)
from retail_sale
group by customer_id
order by sum(total_sale) desc
limit 5;

-- -- -- another way -- -- --
select * from (
select customer_id,
  sum(total_sale),
  rank() over(order by sum(total_sale) desc) as ranking
from retail_sale
group by customer_id
) as t1
where ranking <= 5;

-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
select
COUNT(DISTINCT customer_id) AS unique_customers,
category
from retail_sale
group by category;


-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)
select * from retail_sale;
select
case
	when sale_time <= '12:00:00' THEN 'Morning'
    when sale_time <= '17:00:00' then 'Afternoon'
    else 'Evening'
END as shift,
count(*) as number_of_order
from retail_sale
group by shift;