SELECT * FROM accintern.diabetes_prediction;
SELECT Patient_id, age
FROM diabetes_prediction;
SELECT *
FROM diabetes_prediction
WHERE gender = 'female' AND age > 40;

SELECT AVG(bmi) AS average_bmi
FROM diabetes_prediction;

SELECT *
FROM diabetes_prediction
ORDER BY blood_glucose_level DESC;

SELECT * FROM diabetes_prediction
WHERE hypertension = 1 AND diabetes = 1;

SELECT COUNT(*) AS number_of_patients_with_heart_disease
FROM diabetes_prediction
WHERE heart_disease = 1;

SELECT smoking_history, COUNT(*) AS patient_count
FROM diabetes_prediction
GROUP BY smoking_history;

SELECT Patient_id
FROM diabetes_prediction
WHERE bmi > (SELECT AVG(bmi) FROM diabetes_prediction);

SELECT * FROM diabetes_prediction
ORDER BY HbA1c_level DESC
LIMIT 1;

SELECT Patient_id, FLOOR(DATEDIFF(CURRENT_DATE, age) / 365) AS age_in_years
FROM diabetes_prediction;

SELECT 
    Patient_id,
    gender,
    blood_glucose_level,
    RANK() OVER (PARTITION BY gender ORDER BY blood_glucose_level DESC) AS glucose_level_rank
FROM diabetes_prediction;

select * from diabetes_prediction;
SET SQL_SAFE_UPDATES = 0;

SET SQL_SAFE_UPDATES = 0;
UPDATE diabetes_prediction SET smoking_history = 'Ex-smoker' WHERE age > 50;

INSERT INTO diabetes_prediction (EmployeeName, Patient_id, gender, age, hypertension, heart_disease, smoking_history, bmi, HbA1c_level, blood_glucose_level, diabetes)
VALUES ('Jane Smith', 'P789012', 'Male', 42, 1, 0, 'Smoker', 28.3, 6.2, 120, 1);

SELECT * FROM diabetes_prediction
WHERE EmployeeName = 'Nilesh Thorat';

DELETE FROM diabetes_prediction
WHERE heart_disease = 1;

SELECT Patient_id
FROM diabetes_prediction AS dp1
WHERE hypertension = 1
  AND NOT EXISTS (
    SELECT 1
    FROM diabetes_prediction AS dp2
    WHERE dp1.Patient_id = dp2.Patient_id
      AND diabetes = 1
  );
  select* from diabetes_prediction;
  
SELECT * FROM diabetes_prediction
WHERE Patient_id = 'NULL';

DELETE FROM diabetes_prediction
WHERE Patient_id = 'NULL';

UPDATE diabetes_prediction
SET Patient_id = 'unique_value'
WHERE Patient_id = 'NULL';

ALTER TABLE diabetes_prediction
ADD CONSTRAINT unique_patient_id UNIQUE (Patient_id(255));

CREATE VIEW patient_info_view AS
SELECT Patient_id, age, bmi
FROM diabetes_prediction;

SELECT * FROM patient_info_view;