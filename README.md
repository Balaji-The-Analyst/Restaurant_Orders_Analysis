 # Restaurant Orders Analysis
 
 ### Problem Statement
 A quarter's worth of orders from a fictitious restaurant serving international cuisine, including the date and time of each order, the items ordered, and additional details on the type, name, and price. Analyze the data and give valuable insights that cover the below questions and recommendations to improve the sales of low-performance food items in restaurant.
 
### Exploratory Analysis Question
* What were the least & most ordered items? What categories were they in?
* Which month is the least & most orders and income?
* Which item is the lowest performance and why?
* What do the highest spend orders look like? Which items did they buy and how much did they spend?
* Were there certain times that had more or fewer orders?
* Based on the data, Which cuisine should we focus on developing more menu items?

### Tables
##### Menu_items
* menu_item_id - Unique ID of a menu item.
* item_name - Name of a menu item.
* Category - Category or type of cuisine of the menu item.
* price - Price of the menu item (US Dollars $).
##### Order_details
* order_details_id - Unique ID of an item in an order.
* order_id - ID of an order.
* order_date - Date an order was put in (MM/DD/YY).
* order_time - Time an order was put in (HH:MM:SS AM/PM).
* item_id - Matches the menu_item_id in the menu_items table

### SQL Concepts(Used in this Analysis)
Select,where,Groupby,orderby,Subquries,joins,limit,aggregation functions,delete,alter,union,date functions(date(),monthname()),substring_index(),isnull()

### Insights
* Hamburger is more ordered item(American dish)
* Chicken Tacos is least ordered item(Mexican dish)
* Order_id 440,2075,1957,330,2675 generated high income & more food items.
* 94% of orders were placed after 12 pm
* Most of the people like to order Asian. It is the best option for developing more menu items.
* Feb month has low income when compared to other months.
* Few Mexican items generate very low income & order count is very low. Because of this, Feb month performance is low.
* Chicken Tacos performance is very low when compare to other items due to low orders and many people didn't show interest on Mexican items.

### Recommendations
Most people like Asian food items, you have to focus on more to improve the food items and add more Asian food items to the menu. Customers have shown low interest in Chicken Tacos(a Mexican food item). Most of the orders are placed in PM shit. You have to make sure that all food items are available on the PM shift for more orders(compared to the AM shift).






           
