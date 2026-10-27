CREATE DATABASE cirrhosis_analysis;
USE cirrhosis_analysis;
SELECT * FROM cirrhosis;

SELECT COUNT(*) AS total_patients FROM cirrhosis;
DESCRIBE cirrhosis;

-- Retrieve all the columns for patients who were censored (Status = 'C').
SELECT * FROM cirrhosis WHERE Status = 'C';

-- Calculate the average age of male patients.
SELECT AVG(Age) AS average_male_age
FROM cirrhosis WHERE Sex = 'M';

-- Count the number of patients with ascites and hepatomegaly.
SELECT COUNT(*) AS total_patients
FROM cirrhosis WHERE Ascites = 'Y'
AND Hepatomegaly = 'Y';

-- Find the maximum bilirubin level recorded in the dataset.
SELECT MAX(Bilirubin) AS maximum_bilirubin FROM cirrhosis;

-- Calculate the average cholesterol level for patients who received D-penicillamine.
SELECT AVG(Cholesterol) AS average_cholesterol
FROM cirrhosis WHERE Drug = 'D-penicillamine';

-- Retrieve the ID and N_Days for patients with edema despite diuretic therapy (Edema = 'Y').
sELECT  ID, N_Days FROM cirrhosis
WHERE Edema = 'Y';

-- Find the number of male and female patients in each stage of the disease.
SELECT   Stage,Sex,COUNT(*) AS total_patients
FROM cirrhosis GROUP BY Stage, Sex ORDER BY Stage, Sex;

-- Calculate the average prothrombin time for patients who died (Status = 'D').
SELECT  AVG(Prothrombin) AS average_prothrombin
FROM cirrhosis WHERE Status = 'D';

-- Retrieve the ID and Status for patients who had spiders (Spiders = 'Y') and hepatomegaly (Hepatomegaly = 'Y').
SELECT ID,Status FROM cirrhosis
WHERE Spiders = 'Y' AND Hepatomegaly = 'Y';

-- Find the minimum and maximum platelet counts recorded in the dataset.
SELECT MIN(Platelets) AS minimum_platelets,MAX(Platelets) AS maximum_platelets
FROM cirrhosis;

-- Retrieve the ID and N_Days for patients who died (Status = 'D').
SELECT id, N_Days, Status
FROM cirrhosis WHERE Status = 'D';

-- Calculate the maximum and minimum Triglycerides levels in the dataset.
USE cirrhosis_analysis;
DESCRIBE cirrhosis;
USE cirrhosis_analysis;

SELECT MAX(`Tryglicerides`) AS maximum_triglycerides,MIN(`Tryglicerides`) AS minimum_triglycerides
FROM cirrhosis;

-- Find the average Albumin level for each histologic stage of the disease.
SELECT Stage,AVG(Albumin) AS average_albumin
FROM cirrhosis GROUP BY Stage ORDER BY Stage;

-- Calculate the total number of male and female patients in the dataset.
SELECT COUNT(CASE WHEN Sex = 'M' THEN 1 END) AS male_patients,
COUNT(CASE WHEN Sex = 'F' THEN 1 END) AS female_patients
FROM cirrhosis;

-- Find the average Platelets count for patients with and without ascites.
SELECT Ascites, AVG(Platelets) AS average_platelets
FROM cirrhosis
GROUP BY Ascites;

-- Retrieve the ID, Age, and Status of patients whose age is greater than 50 and have hepatomegaly.
SELECT ID, Age, Status FROM cirrhosis
WHERE Age > 50 * 365.25 AND Hepatomegaly = 'Y';

-- Retrieve the ID and Drug of patients who were prescribed a drug containing the term "penicillamine" in its name.
SELECT ID, Drug FROM cirrhosis
WHERE Drug LIKE '%penicillamine%';

-- Retrieve the ID, Age, and Bilirubin levels of patients, ordered by increasing age.
SELECT ID, Age, Bilirubin FROM cirrhosis
ORDER BY Age ASC;

-- Retrieve the ID, N_Days, and Status of patients, ordered by descending N_Days.
SELECT ID, N_Days, Status
FROM cirrhosis ORDER BY N_Days DESC;

-- Retrieve the ID, Age, and Cholesterol levels of patients younger than 50 years old, ordered by increasing Cholesterol levels.
SELECT ID, Age, Cholesterol
FROM cirrhosis WHERE Age < 50 * 365.25
ORDER BY Cholesterol ASC;

 



