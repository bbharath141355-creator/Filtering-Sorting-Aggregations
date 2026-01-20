Create database task_3;
use task_3;
    
    CREATE TABLE diabetes (
    Pregnancies INT,
    Glucose INT,
    BloodPressure INT,
    SkinThickness INT,
    Insulin INT,
    BMI NUMERIC(5,2),
    DiabetesPedigreeFunction NUMERIC(6,4),
    Age INT,
    Outcome INT
);
 
select * from diabetes;

SELECT COUNT(*) FROM diabetes;

SELECT Pregnancies, Glucose, BMI, Age
FROM diabetes;

SELECT *
FROM diabetes
WHERE Glucose > 140;

SELECT Age, BMI
FROM diabetes
ORDER BY Age ASC;

SELECT AVG(Glucose) AS avg_glucose
FROM diabetes;

SELECT Outcome,
       COUNT(*) AS total_patients
FROM diabetes
GROUP BY Outcome;

SELECT Age,
       AVG(Glucose) AS avg_glucose
FROM diabetes
GROUP BY Age
HAVING AVG(Glucose) > 120;

SELECT *
FROM diabetes
WHERE Age BETWEEN 30 AND 50;

SELECT *
FROM diabetes
WHERE Glucose LIKE '1%';

SELECT BMI, Age, Outcome
FROM diabetes
ORDER BY BMI DESC
LIMIT 5;

SELECT Outcome, COUNT(*) AS total_patients
FROM diabetes
GROUP BY Outcome;







