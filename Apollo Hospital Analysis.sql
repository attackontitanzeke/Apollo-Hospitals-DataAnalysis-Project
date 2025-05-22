CREATE DATABASE apollo;

USE apollo;

SELECT * FROM apollotb;

-- 1. Total Revenue (Billing Amount)

SELECT SUM(Billing_Amount) AS Total_Revenue
FROM apollotb;

-- 2. Average Billing Per Patient

SELECT AVG(Billing_Amount) as Avg_Billing_Per_Patient 
FROM apollotb;

-- 3. Revenue Recovery via Health Insurance

SELECT SUM(Health_Insurance_Amount) AS Insurance_Revenue, SUM(Billing_Amount) AS Total_Revenue,
    ROUND((SUM(Health_Insurance_Amount) / SUM(Billing_Amount)) * 100, 2) AS Insurance_Coverage_Percentage
FROM apollotb;

-- 4. Bed Occupancy Distribution

SELECT Bed_Occupancy, COUNT(*) AS Patent_Count
FROM apollotb
GROUP BY Bed_Occupancy;

-- 5. Top 5 Most Frequent Diagnoses

SELECT Diagnosis, COUNT(*)  as Cases
FROM apollotb
GROUP BY Diagnosis
ORDER BY Cases DESC
LIMIT 5;

-- 6. Top Revenue-Generating Tests

SELECT Test, SUM(Billing_Amount) as Revenue
FROM apollotb
GROUP BY Test
ORDER BY Revenue;

-- 7. Doctor Feedback Score

SELECT Doctor, COUNT(Feedback) as Feedback_Count, ROUND(Avg(Feedback),2) as Average_Feedback
FROM apollotb
GROUP BY Doctor;

-- 8. Average Length of Stay

-- __________________________________________________________________________________________
-- Changing Column datatype from Varchar to Date
DESCRIBE apollotb;
    
UPDATE apollotb 
SET 
    Admit_Date_clean = STR_TO_DATE(NULLIF(Admit_Date, '00-01-1900'), '%d-%m-%Y'),
    Discharge_Date_clean = STR_TO_DATE(NULLIF(Discharge_Date, '00-01-1900'), '%d-%m-%Y'),
    Followup_Date_clean = STR_TO_DATE(NULLIF(Followup_Date, '00-01-1900'), '%d-%m-%Y');

ALTER TABLE apollotb
DROP COLUMN Admit_Date,
DROP COLUMN Discharge_Date,
DROP COLUMN Followup_Date;

ALTER TABLE apollotb
CHANGE Admit_Date_Clean Admit_Date DATE,
CHANGE Discharge_Date_Clean Discharge_Date DATE,
CHANGE Followup_Date_Clean Followup_Date DATE;

SET SQL_SAFE_UPDATES = 0;

-- ____________________________________________________________________________________________________________________

SELECT 
    AVG(DATEDIFF(DATE(Discharge_Date), DATE(Admit_Date))) AS Avg_Length_of_Stay
FROM apollotb;

-- 9. Follow-Up Compliance
SELECT 
    COUNT(*) AS Total_Patients, COUNT(Followup_Date) AS Followups_Scheduled,
    ROUND((COUNT(Followup_Date) / COUNT(*)) * 100, 2) AS Followup_Rate
FROM apollotb;

-- 10. Monthly Revenue Trend

SELECT 
    DATE_FORMAT(Admit_Date, '%Y-%m') AS Month,
    SUM(Billing_Amount) AS Monthly_Revenue
FROM apollotb
GROUP BY Month
ORDER BY Month;







