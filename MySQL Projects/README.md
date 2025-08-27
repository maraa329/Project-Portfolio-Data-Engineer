# Data Cleaning Project – Company Layoffs Dataset

## Overview
This project demonstrates how to clean and prepare raw data for analysis using SQL.  
The dataset contains records of company layoffs across industries, including company details, industry, total layoffs, stage, and funding raised.  

The goal was to clean the dataset by removing duplicates, handling null/blank values, and standardizing data for exploratory analysis.

## Steps Performed
1. **Created a staging table** to preserve raw data and perform transformations on a copy.  
2. **Identified duplicate records** using the `ROW_NUMBER()` window function with multiple partitions.  
3. **Removed duplicates** to ensure only unique entries were retained.  
4. **Standardized table schema** with consistent column formatting.  
5. **Prepared a cleaned dataset** (`layoffs_staging2`) suitable for further exploratory data analysis (EDA).  

## Tools Used
- MySQL  

## Results
- Reduced dataset redundancy by removing duplicate records.  
- Created a clean, standardized dataset ready for analysis.  


# Exploratory Data Analysis (EDA) – Company Layoffs Dataset

## Overview
This project applies SQL-based exploratory data analysis (EDA) on a global layoffs dataset.  
After cleaning the data, the goal was to extract insights into trends, patterns, and distributions of layoffs across industries, companies, and years.  

## Steps Performed
1. **Basic exploration** – previewed dataset and extracted maximum values for layoffs and percentages.  
2. **Industry and company analysis** – grouped layoffs by industry, company, and stage of growth.  
3. **Geographic insights** – aggregated layoffs by country.  
4. **Trend analysis** – calculated total layoffs per year and per month, including a **rolling total** of layoffs over time.  
5. **Ranking queries** – identified top 5 companies and industries with the highest layoffs each year using `DENSE_RANK()`.  

## Tools Used
- MySQL  

## Results
- Identified companies with the largest layoffs (including individual events and cumulative totals).  
- Found that certain industries (e.g., technology, crypto) were disproportionately impacted.  
- Observed time-based patterns, including peaks in layoffs during specific years and months.  
- Produced ranked lists of top companies and industries affected per year.  

## Key SQL Concepts Used
- Aggregations (`SUM`, `MAX`, `MIN`)  
- Window functions (`ROW_NUMBER()`, `DENSE_RANK()`)  
- Grouping and filtering (`GROUP BY`, `ORDER BY`)  
- Rolling totals with `SUM() OVER`  
