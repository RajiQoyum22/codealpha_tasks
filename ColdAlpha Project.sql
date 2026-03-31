CREATE DATABASE AmazonReviewsDB;

USE AmazonReviewsDB;

CREATE TABLE amazon_reviews (
    Id INT,
    ProductId VARCHAR(50),
    UserId VARCHAR(50),
    ProfileName VARCHAR(255),
    HelpfulnessNumerator INT,
    HelpfulnessDenominator INT,
    Score INT,
    Time BIGINT,
    Summary VARCHAR(MAX),
    Text VARCHAR(MAX)
);


SELECT *
FROM [dbo].[Reviews]

-- 1- TOTAL NUMBERS OF REVIEWS

SELECT COUNT(*) AS TotalReviews
FROM  [dbo].[Reviews];

-- 2- Rating Distribution
    -- This shows how customers rate products

SELECT Score, COUNT(*) AS TotalReviews
FROM [dbo].[Reviews]
GROUP BY Score
ORDER BY Score;

SELECT COUNT(*) AS TotalReviews
FROM  [dbo].[Reviews];

-- 3 - Average Rating

SELECT AVG(Score) AS AverageRating
FROM [dbo].[Reviews];

-- 4 - Most Reviewed Products

SELECT TOP 10 ProductId,
COUNT(*) AS ReviewCount
FROM [dbo].[Reviews]
GROUP BY ProductId
ORDER BY ReviewCount DESC;

-- 5 - Most Active Reviewers

SELECT TOP 10 ProfileName,
COUNT(*) AS TotalReviews
FROM [dbo].[Reviews]
GROUP BY ProfileName
ORDER BY TotalReviews DESC;


-- 6 - Helpfulness Analysis

SELECT
SUM(HelpfulnessNumerator) AS HelpfulVotes,
SUM(HelpfulnessDenominator) AS TotalVotes
FROM [dbo].[Reviews]

-- 7 - Review Length Analysis

SELECT
AVG(LEN(Text)) AS AvgReviewLength
FROM [dbo].[Reviews]




--TASK 4 — SENTIMENT ANALYSIS
-- This creates a new table with sentiment classification

SELECT *,
CASE
    WHEN Score >= 4 THEN 'Positive'
    WHEN Score = 3 THEN 'Neutral'
    ELSE 'Negative'
END AS Sentiment
INTO amazon_reviews_sentiment
FROM [dbo].[Reviews]

/**SELECT amazon_reviews_sentiment
FROM [dbo].[Reviews]
**/

-- Sentiment Distribution
-- Majority of customers express positive sentiment

SELECT Sentiment,
COUNT(*) AS TotalReviews
FROM amazon_reviews_sentiment
GROUP BY Sentiment;

-- Negative Review Analysis
-- Shows common complaints

SELECT TOP 20 Text
FROM amazon_reviews_sentiment
WHERE Sentiment = 'Negative';



