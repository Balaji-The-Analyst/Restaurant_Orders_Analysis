# Restaurant Orders Analysis
A quarter's worth of orders from a fictitious restaurant serving international cuisine, including the date and time of each order, the items ordered, and additional details on the type, name, and price. Analyze the data and give valuable insights that cover the below questions and give recommendations to improve the sales of low-performance food items in restaurant.
 
## Here are the questions I was interested in answering
1) What were the least & most ordered items? What categories were they in?
2) Which month is the least & most orders and income?
3) Which item is the lowest performance and why?
4) What do the highest spend orders look like? Which items did they buy and how much did they spend?
5) Were there certain times that had more or fewer orders?
6) Based on the data, Which cuisine should we focus on developing more menu items?

## I took the following steps to create my analysis
1) Utilized SQL's `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`, and `LIMIT` clauses for data selection, filtering, grouping, sorting, and limiting results, respectively.
2) Leveraged `subqueries` to perform advanced analysis, such as identifying high spend orders or evaluating the performance of specific items.
3) Utilized aggregation functions like `COUNT` and `SUM` to aggregate data for insights into order frequency, income generation, and item performance.
4) Employed date functions such as `DATE()` and `MONTHNAME()` to extract and analyze temporal patterns, including monthly order trends and identifying low-performance months.
5) Utilized SQL's `JOIN` operations to combine data from multiple tables, facilitating comprehensive analysis by integrating related information from different sources.

## Here are my key takeaways
1) Most of the people liked to order an American dish called Hamburger. 
2) Chicken Tacos is a Mexican dish. people showed very low interest in it.
3) Order_id 440,2075,1957,330,2675 generated high income & ordered more food items.
4) 94% of orders were placed in the PM shift.
5) Most of the people like to order Asian. It is the best option for developing more menu items.
6) Feb month has low income when compared to other months.
7) Few Mexican items generate very low income & order count is very low. Because of this, Feb month performance is low.
8) Chicken Tacos performance is very low when compare to other items due to low orders and many people didn't show interest on Mexican items.

## Recommendations
Most people like Asian food items, you have to focus on more to improve the food items and add more Asian food items to the menu. Customers have shown low interest in Chicken Tacos(a Mexican food item). Most of the orders are placed in PM shit. You have to make sure that all food items are available on the PM shift for more orders(compared to the AM shift).






           
