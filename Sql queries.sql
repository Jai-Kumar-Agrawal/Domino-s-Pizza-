use pizza;
select * from pizza_data;
select distinct(count(*)) from pizza_data;

SELECT DATENAME(DW,order_date) AS order_day,
COUNT(DISTINCT order_id) AS total_orders
FROM pizza_data
GROUP BY DATENAME(DW, order_date);




select Datename(month,order_date)as month_name,
count(distinct order_id)as total_orders from 
pizza_data group by Datename(month,order_date);


select pizza_category,sum(total_price)*100/
(select sum(total_price) from pizza_data)as
total_sales from pizza_data 
group by pizza_category;


select pizza_size,sum(total_price) as total_sales,
sum(total_price)*100/
(select sum(total_price) from pizza_data)as pct
from pizza_data group by pizza_size;


select sum(total_price) as revenue from pizza_data;

select count(distinct order_id) as total_orders from pizza_data;

select sum(quantity) as total_pizza_sold from pizza_data;

select sum(quantity)/count(distinct order_id) as avg_pizza_per_order 
from pizza_data;