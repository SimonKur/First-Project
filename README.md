# Sales Analysis 

## Overview 
Analysis of customer behavior, retention, and liftime value for an e-commerce company to improve customer retention and maximize revenue. 

## Business Questions 

1. **Customer Segmentation:** Who are our most valuable customers? 
2. **Cohort Analysis:** How do different customer groups generate revenue? 
3. **Retention Analysis:** Who hasn't purchased recently? 

## Analysis Approach 

### 1. Customer Segementation 
- Categorized customers based on total lifetime value (LTV) 
- Assigned customers to High-, Mid-, and Low-value segements 
- Calculated key metrics: 
    - total revenue 

🖥️ Queary: [1_customer_segmentation.sql](/1_Customer_segementation.sql)

**📈 Visualization:** 

<img src = "/Users/simonkurzewski/Desktop/Things/SQL folder/First Project/images/0c68894e-f188-4077-bda0-7044f4f75826.png">

💻 Script: [1_customer_segmentation.R](/1_customer_segmentation.R)

**📊 Key Findings:**
- High-value segment (25% of customers) drives 66% of revenue ($135.4M) 
- Mid-value segment (50% of customers) drives 32% of revenue ($66.6M)
- Low-value segment (25% of customers) drives 2% of revenue ($4.3M)

💡 **Business Insights** 
- **High-value:** Offer premium membership program to 12 375 VIP customers as losing one customer significantly impacts revenue 
- **Mid-value:**  Create upgrade paths through personalized promotions, with potential $66.6M -> $135.4M revenue opportunity 
- **Low-Value:** Design reengagment campaigns and price-sensitive promotions to increase purchase frequancy 

### 2. Cohort Analysis 
- Tracked revenue and customer count per cohorts
- Cohorts were grouped by year of first purchase 
- Analyzed customer retention at a cohort level 

🖥️ Queary: [2_cohort_analysis.sql](/2_cohort_analysis.sql)


**📈 Visualization:** 

<img src = "/Users/simonkurzewski/Desktop/Things/SQL folder/First Project/images/90a35112-10f4-4a63-99f6-94ce3ca52aaa.png">


💻 Script: [2.cohort_analysis.R](/2.cohort_analysis.R)

**📊 Key Findings:**
- Revenue per customer shows an alarming decreasing trend over time 
    - 2022-2024 cohorts are consistently perfromnig worse than earlier cohorts
    - NOTE: Although net revenue is increasing, this is likely due to a larger customer base, which is not reflective of customer value

💡 **Business Insights** 
- The customers value is decreasing over time and need further investigation 
- It is also concerning that we saw a drop in number of customers acquired during 2023 
- With both lowering LTV and decreasing customer acquistion, the company is facing a potential revenue decline 

### 3. Retention Analysis 
- Identified customers at risk of churning 
- ANalyzed last purchase patterns 
- Calculated customer-specific metrics 

🖥️ Queary: [3_retention_analysis](/3_Retention_analysis.sql)

**📈 Visualization:** 

<img src = "/Users/simonkurzewski/Desktop/Things/SQL folder/First Project/images/2f961534-a279-4a53-ab62-57e7c7c2eb7d.png">

💻 Script: [3_retention_analysis.R](/3_retention_analysis.R)

**📊 Key Findings:**
- Churned customers stablizes at around 90% after 2-3 years, indiciating a predictable long-term retetion pattern
- Across all cohort years the retention rates are consistently low, around 8-10%, suggesting retention issues are systemic rather than specific to certain years
- Even the newer cohorts (2022-2023) show similar churn trajectories, showcasing that without intervention future cohorts may follow the same pattern 

💡 **Business Insights** 
- Strengthen early engagemnet strategies to target the first 1-2 years with onboarding incentives, loyalty rewards, and personalized offers to improve long-term retention
- Re-engage high-value churned customers by focusing on targeted win-back campaigns rather than broad retention efforts, as reactivating valubale users may yield higher ROI 
- Predict and preempt churn risk and use customer-specific warning indicators to proactively intervene at risk userse before they lapse. 

## Strategic Recomendations 

1. **Customer Value Optimization** 
    - Launch VIP program for 12 375 high-value customers (66% revenue) 
    - Create personalized upgrade paths for mid-value segment ($66.6M -> $135.3M opportunity)
    - Design price-sensitive promotions for low-value segement to increase purchase frequency 

2. Cohort Performance Strategy 
    - Target 2022-2024 cohorts with personalized re-engagement offers 
    - Implement loyalty/subscription programs to stabilize revenue flucations 
    - Apply successful strategies from high-spending 2016-2018 cohorts to newer customers 

3. Retention & Churn Prevention 
    - Strengthen first 1-2 year engagement with onboarding incentives and loyalty rewards 
    - Focus on targeted win-back campaigns for high-value churned customers 
    - Implement proactive intervention system for at-risk customers before they lapse 

## Technical Details 

- **Database:** PostgreSQL 
- **Analysis Tool:** PostgreSQL, Dbeaver, PGadmin 
- **Visualization:** Rstudio 