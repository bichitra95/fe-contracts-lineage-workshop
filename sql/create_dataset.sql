CREATE DATABASE fifthelephant;

USE fifthelephant;

CREATE TABLE `marketing_campaign_dataset` (
  `Campaign_ID` int DEFAULT NULL,
  `Company` varchar(50) DEFAULT NULL,
  `Campaign_Type` varchar(50) DEFAULT NULL,
  `Target_Audience` varchar(50) DEFAULT NULL,
  `Duration` varchar(50) DEFAULT NULL,
  `Channel_Used` varchar(50) DEFAULT NULL,
  `Conversion_Rate` double DEFAULT NULL,
  `Acquisition_Cost` varchar(50) DEFAULT NULL,
  `ROI` double DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Language` varchar(50) DEFAULT NULL,
  `Clicks` int DEFAULT NULL,
  `Impressions` int DEFAULT NULL,
  `Engagement_Score` int DEFAULT NULL,
  `Customer_Segment` varchar(50) DEFAULT NULL,
  `Date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


