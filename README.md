# codealpha_tasks

# 📊 CodeAlpha Data Analytics Internship Tasks

This repository contains my completed internship tasks for the Data Analytics Internship at CodeAlpha.

## ✅ Completed Tasks
- Task 2: Exploratory Data Analysis (EDA)
- Task 3: Data Visualization
- Task 4: Sentiment Analysis

## 📌 Project Title
Amazon Product Reviews Sentiment & Customer Insights Dashboard

## 🛠️ Tools Used
- Microsoft SQL Server
- Power BI
- DAX
- Excel

## 📂 Repository Structure
- **Task2_EDA** → SQL queries and EDA insights
- **Task3_Data_Visualization** → Power BI dashboard and screenshot
- **Task4_Sentiment_Analysis** → Sentiment SQL logic and insights

## 📈 Dashboard Preview


## 🙌 Acknowledgment
Special thanks to CodeAlpha for this practical learning opportunity.



# 🔍 Task 2 — Exploratory Data Analysis (EDA)

## 🎯 Objective
The goal of this task is to understand the Amazon Fine Food Reviews dataset by exploring customer ratings, review volume, top products, and helpfulness patterns.

## 🛠️ Process
Using Microsoft SQL Server, I performed:
- Total review count
- Average rating analysis
- Rating distribution
- Top reviewed products
- Most active reviewers
- Helpfulness vote analysis

## 📌 Key Insights
- The dataset contains over 568K customer reviews
- Average customer rating is 4.18
- Majority of ratings are 5-star reviews
- Some products dominate review engagement
- Helpful votes highlight influential customer reviews

## 📂 Files
- SQL_EDA_Queries.sql
- EDA_Insights.md



# 📊 Task 3 — Data Visualization

## 🎯 Objective
The goal of this task is to transform Amazon customer review data into an interactive Power BI dashboard for business decision-making.

## 📈 Dashboard Features
- KPI Cards
  - Total Reviews
  - Average Score
  - Positive %
  - Positive Reviews
- Rating Distribution
- Sentiment Breakdown
- Helpfulness by Product
- Top Reviewed Products
- Score vs Sentiment Analysis
- Interactive slicers

## 🖼️ Dashboard Preview
Add this image:

![Dashboard](dashboard_preview.png)

## 📌 Business Value
This dashboard helps stakeholders quickly understand:
- customer satisfaction
- product popularity
- review engagement
- sentiment trends


# ❤️ Task 4 — Sentiment Analysis

## 🎯 Objective
The objective of this task is to classify Amazon customer reviews into Positive, Neutral, and Negative sentiment categories.

## 🛠️ Method Used
Sentiment was classified using SQL logic based on customer rating score:

- Positive → Score 4 and 5
- Neutral → Score 3
- Negative → Score 1 and 2

## 📌 SQL Logic
Implemented using SQL CASE statements in Microsoft SQL Server.

## 📊 Results
- Positive reviews: 444K
- Positive rate: 78%
- Neutral reviews: 42K
- Negative reviews: 82K

## 💡 Insight
The majority of customers expressed positive sentiment, showing strong satisfaction with most products.
