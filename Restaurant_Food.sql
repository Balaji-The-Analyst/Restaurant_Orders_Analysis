-- Quries to display table data
select * from menu_items;
select * from order_details;

-- Changing column name
alter table menu_items rename column menu_item_id to item_id;
alter table menu_items rename column price to `Price($)`;
alter table order_details rename column ï»¿order_details_id to order_details_id;

-- Cheacking if any null values present in table or not 
select sum(isnull(item_id)) item_id,sum(isnull(item_name)) item_name,sum(isnull(category)) category,sum(isnull(`price($)`)) `price($)`
from Menu_items; -- no null values
select sum(isnull(order_details_id)) order_details_id,sum(isnull(order_id)) order_id,sum(isnull(order_date)) order_date,sum(isnull(order_time)) order_time,sum(isnull(item_id)) item_id 
from order_details; -- item_id contains 137 null values 

-- Removing 137 records containg null values in item_id('item_id' is very important column.Without item_id we can't any thing like food_item,price etc)
delete from order_details where item_id is null;
select * from order_details;

-- Now,I am going to transform order_details table little bit.alter 
create table order_detail as
select order_details_id,order_id,date(order_date) order_date,substring_index(order_time,' ',1) order_time,substring_index(order_time,' ',-1) time_mode,item_id 
from order_details;
drop table order_details;-- droping the table for rename
alter table order_detail rename to order_details;

                                                            -- Exploratory Data Analysis--
-- What were the least and most ordered items? What categories were they in ?

(select mi.item_name item_name,mi.category category,count(od.order_id) Total_orders,"Most Ordered Item" Order_Status  
from menu_items mi 
join order_details od 
using(item_id) 
group by item_name,category
order by total_orders desc limit 1)

union 

(select mi.item_name item_name,mi.category category,count(od.order_id) Total_orders ,"Least Ordered Item" Order_Status
from menu_items mi 
join order_details od 
using(item_id) 
group by item_name,category
order by total_orders asc limit 1);
-- Hamburger is more ordered item(American dish)
-- Chicken Tacos is least orderes item(Mexican dish)

-- What do the highest spend orders look like? Which items did they buy and how much did they spend?
select od.order_id order_id,group_concat(mi.item_name) items,count(1) Number_Of_Items,round(sum(mi.`Price($)`),2) `price($)` 
from menu_items mi 
join order_details od 
using(item_id) 
group by order_id 
order by `price($)` desc 
limit 5;
-- Order_id 440,2075,1957,330,2675 generated high income & more food items.

-- Were there certain times that had more or less orders?

select time_mode,count(distinct order_id) orders 
from order_details 
group by time_mode; -- 94% orders were placed after 12pm

-- Which cuisine should we focus on developing more menu items for based on the data?

 select mi.category,count(od.order_id) Total_orders 
 from menu_items mi 
 join order_details od 
 using(item_id) 
 group by mi.category 
 order by Total_orders desc; 
 -- Most of the people liking to order Asian.It is the best option for developing more menu items.
 
 -- Which month is least and most orders & income? why?
 
 select month(od.order_date) Month_,count(1) Orders,round(sum(mi.`price($)`),2) income 
 from menu_items mi 
 join order_details od 
 using(item_id) 
 group by Month_ 
 order by income desc; -- Feb month have low income when compare to other month
 
 select mi.item_name,mi.category,count(1) orders,round(sum(mi.`price($)`),2) Income 
 from menu_items mi 
 join order_details 
 using(item_id) 
 where month(order_date)=2 
 group by mi.item_name,mi.category
 order by income asc limit 5; 
 -- Few Mexican items generates very low income & orders count is very low.Because of this, Feb month performance is low.
 
 -- Which item performance is low? Why?
 
 select mi.item_name,mi.category,count(1) orders,round(sum(mi.`price($)`),2) Income 
 from menu_items mi 
 join order_details od 
 using(item_id) 
 group by mi.item_name,mi.category
 order by income asc limit 1; 
 -- Chicken Tacos performance is very low when compare to other items due to low orders and many people didn't show interest on Mexican items.








