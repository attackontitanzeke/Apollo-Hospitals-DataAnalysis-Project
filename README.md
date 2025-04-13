# 🏥 Apollo Hospital Data Analysis Project

## 🧠 Project Objective  
This project aims to analyze operational, billing, and healthcare trends within Apollo Hospitals. Using hospital workflow data, we extracted actionable insights to optimize patient care, billing efficiency, insurance coverage tracking, and feedback monitoring.  

The analysis provides a complete picture of patient admissions, bed occupancy, diagnostic trends, billing vs insurance alignment, and doctor-specific feedback performance.

---

## 📁 Dataset Overview  
While the raw dataset was processed within Power BI, the key fields analyzed include:

- **Patient_ID, Admit Date, Discharge Date, Follow Up Date**
- **Bed_Occupancy** by department (ICU, General, Private)
- **Diagnosis Type**
- **Billing Amount**, **Health Insurance Amount**
- **Test Type** (MRI, CT Scan, X-Ray, etc.)
- **Doctor Feedback Volume**

---

## 📌 Key Questions Answered  

1. **What is the total billing amount for the hospital over the reporting period?**
2. **How is bed occupancy distributed across departments?**
3. **Which diagnosis types are most common?**
4.  **What is the comparison between billing amount and health insurance coverage?**
5.  **Which doctors received the most feedback from patients?**
6.  **Which tests generate the most billing revenue?**  

---

## 🔄 Process Followed  

1. **Data Cleaning & Formatting**:  
   - Cleaned date fields like *Admit Date*, *Discharge Date*, and *Follow Up Date*.  
   - Ensured numeric fields like billing and insurance amounts were consistently formatted.

2. **Data Modeling in Power BI**:  
   - Relationships built around *Patient_ID*.  
   - Fact tables created for billing, tests, and feedback metrics.

3. **Visualization & Insights**:  
   - Custom visualizations for doctor-wise feedback, diagnosis breakdown, and insurance analysis.  
   - Slicers used for department-wise filtering and drill-downs.

4. **Report Design**:  
   - Focused on clarity and hospital KPIs like occupancy, billing, and satisfaction.  
   - Added cards, clustered bars, and line charts for dynamic storytelling.

---

## 📊 Dashboard Preview

📎 **Download/View Dashboard (PDF)**: [`Apollo Hospital Analysis.pdf`](./Apollo%20Hospital%20Analysis.pdf)

![p1](https://github.com/user-attachments/assets/411e58ea-bf10-4717-b1e9-32dbc1b5e708)


---

## 🔍 Key Insights

- High volume of patients were treated for **Viral Infections**, followed by Flu and Malaria.
- **MRI and CT Scans** were the biggest sources of billing, but often undercovered by insurance.
- Patient **feedback was evenly distributed** among leading doctors, each with ~1.02K reviews.
- There’s opportunity to reduce patient out-of-pocket expenses by aligning billing with insurance trends.
- **Bed usage** in Private and ICU is high — indicating demand for premium care.

---

## 🧾 Conclusion  

This analysis provides Apollo Hospitals with critical operational insights:
- Better **resource allocation** based on bed usage trends  
- Strategic planning for **diagnosis frequency**  
- Improved **billing and insurance planning**  
- Enhanced **doctor performance monitoring** based on feedback data

---

## ⚙️ Tools Used  
- Microsoft Power BI  
- Power Query Editor  

