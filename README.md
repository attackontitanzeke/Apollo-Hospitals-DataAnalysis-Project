# 🏥 Apollo Hospital Data Analysis Project

## 🧠 Project Objective

This project aims to analyze operational, billing, and healthcare trends within Apollo Hospitals. Using hospital workflow data, we extracted actionable insights to optimize patient care, billing efficiency, insurance coverage tracking, and feedback monitoring.

The analysis provides a complete picture of patient admissions, bed occupancy, diagnostic trends, billing vs insurance alignment, and doctor-specific feedback performance.

## 📁 Dataset Overview

While the raw dataset was processed within **Power BI** and **MySQL**, the key fields analyzed include:

* **Patient_ID**, **Admit Date**, **Discharge Date**, **Follow Up Date**
* **Bed Occupancy** by department (ICU, General, Private)
* **Diagnosis Type**
* **Billing Amount**, **Health Insurance Amount**
* **Test Type** (MRI, CT Scan, X-Ray, etc.)
* **Doctor Feedback Volume**

## 📌 Key Questions Answered

1. **What is the total billing amount for the hospital over the reporting period?**
2. **How is bed occupancy distributed across departments?**
3. **Which diagnosis types are most common?**
4. **What is the comparison between billing amount and health insurance coverage?**
5. **Which doctors received the most feedback from patients?**
6. **Which tests generate the most billing revenue?**
7. **What is the average length of patient stay?**
8. **How much revenue is generated monthly?**
9. **What is the patient follow-up compliance rate?**
10. **Which departments have the highest occupancy pressure?**

## 🔄 Process Followed

### 1. **Data Cleaning & Formatting**:

* Cleaned and standardized date fields like *Admit Date*, *Discharge Date*, and *Follow Up Date* using SQL.
* Converted inconsistent or invalid dates (e.g., `'00-01-1900'`) to `NULL`.
* Ensured numeric fields like billing and insurance amounts were formatted as proper decimals.

### 2. **SQL Analysis & KPI Calculation**:

* Loaded the cleaned data into **MySQL Workbench**.
* Created new date columns in `DATE` format using `STR_TO_DATE()` for accurate querying.
* Wrote 10+ SQL queries to calculate KPIs such as:

  * Total Revenue
  * Average Length of Stay
  * Monthly Revenue Trends
  * Follow-Up Compliance Rates
  * Insurance Recovery Percentage
* These queries helped validate Power BI visuals and uncover new patterns.

### 3. **Data Modeling in Power BI**:

* Relationships were built around *Patient\_ID*.
* Fact tables were structured for billing, test revenue, and feedback metrics.

### 4. **Visualization & Insights**:

* Custom charts for doctor-wise feedback, diagnosis breakdown, and insurance analysis.
* Slicers enabled department-wise filtering and dynamic report interaction.

## 📊 Dashboard Preview

📎 **Download/View Dashboard (PDF)**: [`Apollo Hospital Analysis.pdf`](./Apollo%20Hospital%20Analysis.pdf)

![p1](https://github.com/user-attachments/assets/411e58ea-bf10-4717-b1e9-32dbc1b5e708)


## 🔍 Key Insights

* High volume of patients were treated for **Viral Infections**, followed by Flu and Malaria.
* **MRI and CT Scans** generated the most billing revenue, often undercovered by insurance.
* Patient **feedback was evenly distributed** among top doctors, each averaging \~1.02K reviews.
* **Monthly revenue trends** showed consistent demand peaks post-holiday periods.
* **Private and ICU beds** saw higher usage, suggesting a demand for premium care services.
* **Average length of stay** was around 3.2 days — an important indicator of recovery efficiency.

## 🧾 Conclusion

This analysis provides Apollo Hospitals with critical operational insights:

* Better **resource allocation** based on bed usage and diagnosis volume
* Strategic planning for **test and billing optimization**
* Improved **insurance alignment** for financial planning
* Enhanced **doctor performance tracking** and patient follow-up management

## ⚙️ Tools Used

* Microsoft Power BI
* Power Query Editor
* **MySQL Workbench** (for structured data transformation and KPI querying)

