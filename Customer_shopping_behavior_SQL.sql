use customer_behaviour;
select * from mytable;


-- Q1. Which customers used a discount but still spent more than the average purchase amount? 
select customer_id, purchase_amount 
from mytable 
where discount_applied = 'Yes' and purchase_amount >= (select AVG(purchase_amount) from mytable);



-- Q2. Which are the top 5 products with the highest average review rating?
select item_purchased, round(avg(review_rating),2) as "Average Product Rating"
from mytable
group by item_purchased
order by avg(review_rating) desc
limit 5;



-- Q3. Do subscribed customers spend more? Compare average spend and total revenue between subscribers and non-subscribers.
SELECT subscription_status,
       COUNT(customer_id) AS total_customers,
       ROUND(AVG(purchase_amount),2) AS avg_spend,
       ROUND(SUM(purchase_amount),2) AS total_revenue
FROM mytable
GROUP BY subscription_status
ORDER BY total_revenue,avg_spend DESC;



-- Q4. Which 5 products have the highest percentage of purchases with discounts applied?
SELECT item_purchased,
       ROUND(100.0 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS discount_rate
FROM mytable
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;



-- Q5. Segment customers into New, Returning, and Loyal based on their total number of previous purchases, and show the count of each segment. 
SELECT 
    CASE 
        WHEN previous_purchases = 1 THEN 'New'
        WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
        ELSE 'Loyal'
    END AS customer_segment,
    COUNT(*) AS "Number of Customers"
FROM mytable
GROUP BY 1;

 

-- Q6. What is the revenue contribution of each age group? 
SELECT 
    age_group,
    SUM(purchase_amount) AS total_revenue
FROM mytable
GROUP BY age_group
ORDER BY total_revenue desc;