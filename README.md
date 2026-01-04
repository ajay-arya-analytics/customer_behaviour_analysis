Consumer Shopping Behavior & Retail Analytics 🛒

Project Overview:
This project analyzes transactional data from 3,900 purchases to uncover deep insights into customer spending patterns, product performance, and subscription behavior. By integrating Python for data engineering, SQL for business logic, and Power BI for visualization, this study provides actionable recommendations to optimize marketing strategies and increase customer lifetime value.


🛠 Tech Stack
- Data Processing: Python (Pandas, NumPy)
- Database Management: MySQL
- Data Visualization: Power BI
- Environment: Jupyter Notebook / VS Code

📊 Dataset Summary
- Size: 3,900 rows | 18 columns
- Key Features: Customer Demographics (Age, Gender, Location), Purchase Details (Item, Category, Amount, Season), and Behavioral Data (Review Ratings, Subscription Status, Shipping Type).
- Data Quality: Addressed 37 missing values in the Review Rating column through category-specific median imputation.


🚀 Workflow

1. Data Cleaning & Engineering (Python)
Imputation: Filled missing review ratings using the median of their respective product categories.
Feature Engineering:
Created age_group bins to analyze demographic spending.
Calculated purchase_frequency_days for behavioral tracking.
Normalization: Standardized column names to snake_case and dropped redundant columns (e.g., promo_code_used).
Pipeline: Connected the Python environment to MySQL to export the cleaned dataset for analysis.

2. Business Analysis (SQL)
Using a relational database, I performed structured queries to solve 10 critical business questions:
Revenue Drivers: Compared revenue across Gender, Age Groups, and Subscription status.
Customer Segmentation: Classified users into New, Returning, and Loyal segments based on historical purchase counts.
Product Insights: Identified the top 3 products per category and correlated high ratings with sales volume.
Promotional Impact: Analyzed "Discount-Dependent" products and high-spending discount users.

3. Interactive Dashboard (Power BI)
I built a dynamic dashboard to visualize the findings, focusing on:
KPI Cards: Total Revenue, Average Rating, and Total Customers.
Trend Analysis: Seasonal spending patterns and shipping preference comparisons.
Demographic Breakdown: Revenue distribution by Age Group and Location.

💡 Strategic Recommendations

- Loyalty Migration: Reward "Returning" customers with targeted incentives to move them into the "Loyal" segment.
- Subscription Growth: Promote exclusive benefits for high-frequency shoppers (>5 purchases) who are not yet subscribers.
- Shipping Optimization: Since Express shipping correlates with higher spend, offer "Free Express Shipping" thresholds to increase Average Order Value (AOV).
- Inventory Focus: Prioritize marketing for top-rated products identified in the SQL analysis to maintain high customer satisfaction.
