create database healthcare_project;
use healthcare_project;

create table healthcare
(
Name VARCHAR(100),
Age INT,
Gender VARCHAR(10),
Blood_Type VARCHAR(5),
Medical_Condition VARCHAR(100),
Date_of_Admission DATE,
Doctor VARCHAR(100),
Hospital VARCHAR(150),
Insurance_Provider VARCHAR(50),
Billing_Amount DECIMAL(10,2),
Room_Number INT,
Admission_Type VARCHAR(20),
Discharge_Date DATE,
Medication VARCHAR(100),
Test_Results VARCHAR(50)
); 

select * from healthcare limit 10;

select distinct Admission_Type from healthcare;

SELECT Admission_Type, COUNT(*) 
FROM healthcare
GROUP BY Admission_Type;

update healthcare set Admission_Type = 'Emergency' where Admission_Type = 'Urgent';

select * from healthcare where Age is NULL;
select * from healthcare where Blood_Type is NULL;
select * from healthcare where Billing_Amount is NULL;

SELECT Name, Date_of_Admission, COUNT(*)
FROM healthcare
GROUP BY Name, Date_of_Admission
HAVING COUNT(*) > 1;	

SELECT *
FROM healthcare
WHERE Name = 'Nancy glOVeR';

SELECT COUNT(*) 
FROM healthcare;

SELECT COUNT(DISTINCT 
Name, Age, Gender, Blood_Type, Medical_Condition,
Date_of_Admission, Doctor, Hospital, Insurance_Provider,
Billing_Amount, Room_Number, Admission_Type,
Discharge_Date, Medication, Test_Results)
FROM healthcare;


SELECT 
Name, Age, Gender, Blood_Type, Medical_Condition,
Date_of_Admission, Doctor, Hospital, Insurance_Provider,
Billing_Amount, Room_Number, Admission_Type,
Discharge_Date, Medication, Test_Results,
COUNT(*) AS duplicate_count
FROM healthcare
GROUP BY 
Name, Age, Gender, Blood_Type, Medical_Condition,
Date_of_Admission, Doctor, Hospital, Insurance_Provider,
Billing_Amount, Room_Number, Admission_Type,
Discharge_Date, Medication, Test_Results
HAVING COUNT(*) > 1;


SELECT COUNT(*)
FROM (
    SELECT COUNT(*)
    FROM healthcare
    GROUP BY 
    Name, Age, Gender, Blood_Type, Medical_Condition,
    Date_of_Admission, Doctor, Hospital, Insurance_Provider,
    Billing_Amount, Room_Number, Admission_Type,
    Discharge_Date, Medication, Test_Results
    HAVING COUNT(*) > 1
) AS duplicates;

CREATE TABLE healthcare_clean AS
SELECT DISTINCT *
FROM healthcare;

SELECT COUNT(*) FROM healthcare_clean;

select * from healthcare_clean limit 10;


SELECT *
FROM healthcare
WHERE Age < 0 OR Age > 100;

select * from healthcare_clean where Discharge_Date < Date_of_Admission;

SELECT MIN(Billing_Amount), MAX(Billing_Amount)
FROM healthcare_clean;

SELECT COUNT(*)
FROM healthcare_clean
WHERE Billing_Amount < 0;

DELETE FROM healthcare_clean
WHERE Billing_Amount < 0;


