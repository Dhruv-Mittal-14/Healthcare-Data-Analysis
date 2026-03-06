# Healthcare Data Analysis Project

## Project Overview
This project analyzes healthcare patient data to identify patterns in hospital admissions, medical conditions, insurance coverage, and billing trends.

The goal of the project is to demonstrate an end-to-end **data analytics workflow**, including data cleaning, exploratory data analysis (EDA), and dashboard development.

---

## Tools & Technologies Used

- **SQL** – Data cleaning and validation
- **Python** – Exploratory Data Analysis
- **Pandas** – Data manipulation
- **Matplotlib & Seaborn** – Data visualization
- **Power BI** – Interactive dashboard creation

---

## Dataset

The dataset contains **55,500 healthcare records** with the following attributes:

- Patient Name
- Age
- Gender
- Blood Type
- Medical Condition
- Date of Admission
- Doctor
- Hospital
- Insurance Provider
- Billing Amount
- Room Number
- Admission Type
- Discharge Date
- Medication
- Test Results

---

## Data Cleaning (SQL)

The following cleaning steps were performed using SQL:

- Removed **534 duplicate records**
- Standardized **Admission Type categories**
- Corrected **negative billing values**
- Verified **date consistency between admission and discharge**
- Created a cleaned dataset for analysis

Final dataset size:

**54,966 records**

---

## Exploratory Data Analysis (Python)

EDA was performed using Python to explore patient demographics and healthcare trends.

Key analyses included:

- Patient **age distribution**
- **Gender distribution**
- **Medical condition frequency**
- **Hospital billing trends**
- **Insurance provider analysis**

### Feature Engineering
A new feature was created:

**Stay_Days**

Calculated using:
Stay_Days = Discharge_Date - Date_of_Admission

This feature helps analyze **average hospital stay duration**.

---

## Power BI Dashboard

An interactive dashboard was built in **Power BI** to visualize healthcare insights.

### Dashboard Features

- Key performance indicators (KPIs)
- Patient demographics analysis
- Medical condition distribution
- Hospital billing insights
- Insurance provider analysis
- Interactive filters (slicers)

---

## Dashboard Preview

![Healthcare Dashboard]("dashboard.png")

---

## Key Insights

- **Emergency admissions account for the majority of patient visits**
- The **average hospital stay is approximately 15.5 days**
- Certain hospitals generate significantly **higher billing revenue**
- Insurance providers such as **Blue Cross and Medicare cover the largest share of healthcare costs**

---

## Project Structure
Healthcare-Data-Analysis
│
├── dataset
│ └── healthcare_final.csv
│
├── sql
│ └── data_cleaning.sql
│
├── notebook
│ └── healthcare_eda.ipynb
│
├── dashboard
│ └── healthcare_dashboard.pbix
│
├── images
│ └── dashboard.png
│
└── README.md

---

## Future Improvements

Possible future extensions of this project:

- Predict **patient length of stay using machine learning**
- Analyze **seasonal hospital admission trends**
- Develop a **real-time healthcare analytics dashboard**

---

## Author

Dhruv Mittal  
MCA (Data Science) Student  
