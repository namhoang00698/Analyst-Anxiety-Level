USE social_anxiety;

SELECT * FROM enhanced_anxiety_dataset;

SELECT MAX(`Caffeine Intake (mg/day)`)
FROM enhanced_anxiety_dataset_copy_nodup;

SELECT *
FROM enhanced_anxiety_dataset_copy_nodup
WHERE `Sleep Hours` < 2;

-- ---------------------------CLEANING DATA----------------------------
CREATE TABLE enhanced_anxiety_dataset_copy
LIKE enhanced_anxiety_dataset;

INSERT enhanced_anxiety_dataset_copy
SELECT * FROM enhanced_anxiety_dataset;

SELECT * FROM enhanced_anxiety_dataset_copy;

WITH Duplicated AS(
SELECT *, ROW_NUMBER() OVER(PARTITION BY `Age`,`Gender`,`Occupation`,`Sleep Hours`,`Physical Activity (hrs/week)`,`Caffeine Intake (mg/day)`,
`Alcohol Consumption (drinks/week)`,`Smoking`,`Family History of Anxiety`,`Stress Level (1-10)`,`Heart Rate (bpm)`,`Breathing Rate (breaths/min)`,`Sweating Level (1-5)`,`Dizziness`,`Medication`,`Therapy Sessions (per month)`,
`Recent Major Life Event`,`Diet Quality (1-10)`,`Anxiety Level (1-10)`) AS Rows_Num
FROM enhanced_anxiety_dataset_copy
)
SELECT *
FROM Duplicated
WHERE Rows_Num >=2;

CREATE TABLE `enhanced_anxiety_dataset_copy_nodup` (
  `Age` int DEFAULT NULL,
  `Gender` text,
  `Occupation` text,
  `Sleep Hours` double DEFAULT NULL,
  `Physical Activity (hrs/week)` double DEFAULT NULL,
  `Caffeine Intake (mg/day)` int DEFAULT NULL,
  `Alcohol Consumption (drinks/week)` int DEFAULT NULL,
  `Smoking` text,
  `Family History of Anxiety` text,
  `Stress Level (1-10)` int DEFAULT NULL,
  `Heart Rate (bpm)` int DEFAULT NULL,
  `Breathing Rate (breaths/min)` int DEFAULT NULL,
  `Sweating Level (1-5)` int DEFAULT NULL,
  `Dizziness` text,
  `Medication` text,
  `Therapy Sessions (per month)` int DEFAULT NULL,
  `Recent Major Life Event` text,
  `Diet Quality (1-10)` int DEFAULT NULL,
  `Anxiety Level (1-10)` double DEFAULT NULL,
  `Rows_Num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO enhanced_anxiety_dataset_copy_nodup
SELECT *, ROW_NUMBER() OVER(PARTITION BY `Age`, `Gender`, `Occupation`,`Sleep Hours`, `Physical Activity (hrs/week)`, `Caffeine Intake (mg/day)`, `Alcohol Consumption (drinks/week)`, `Smoking`, `Family History of Anxiety`, `Stress Level (1-10)`, `Heart Rate (bpm)`, `Breathing Rate (breaths/min)`, `Sweating Level (1-5)`, `Dizziness`, `Medication`, `Therapy Sessions (per month)`, `Recent Major Life Event`, `Diet Quality (1-10)`, `Anxiety Level (1-10)`) AS Rows_Num
FROM enhanced_anxiety_dataset_copy;

DELETE FROM enhanced_anxiety_dataset_copy_nodup
WHERE Rows_Num > 1;

SELECT * 
FROM enhanced_anxiety_dataset_copy_nodup;

SELECT COUNT(*)
FROM enhanced_anxiety_dataset_copy_nodup;
-- ------------------------------STANDARD DATA-------------------------------
SELECT `Age`,TRIM(`Age`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Gender`,TRIM(`Gender`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Occupation`,TRIM(`Occupation`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Sleep Hours`,TRIM(`Sleep Hours`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Physical Activity (hrs/week)`,TRIM(`Physical Activity (hrs/week)`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Caffeine Intake (mg/day)`,TRIM(`Caffeine Intake (mg/day)`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Alcohol Consumption (drinks/week)`,TRIM(`Alcohol Consumption (drinks/week)`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Smoking`,TRIM(`Smoking`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Family History of Anxiety`,TRIM(`Family History of Anxiety`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Stress Level (1-10)`,TRIM(`Stress Level (1-10)`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Heart Rate (bpm)`,TRIM(`Heart Rate (bpm)`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Breathing Rate (breaths/min)`,TRIM(`Breathing Rate (breaths/min)`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Sweating Level (1-5)`,TRIM(`Sweating Level (1-5)`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Dizziness`,TRIM(`Dizziness`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Medication`,TRIM(`Medication`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Therapy Sessions (per month)`,TRIM(`Therapy Sessions (per month)`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Recent Major Life Event`,TRIM(`Recent Major Life Event`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Diet Quality (1-10)`,TRIM(`Diet Quality (1-10)`)
FROM enhanced_anxiety_dataset_copy_nodup;
SELECT `Anxiety Level (1-10)`,TRIM(`Anxiety Level (1-10)`)
FROM enhanced_anxiety_dataset_copy_nodup;

SELECT DISTINCT `Gender`
FROM enhanced_anxiety_dataset_copy_nodup;

SELECT DISTINCT `Occupation`
FROM enhanced_anxiety_dataset_copy_nodup;

ALTER TABLE enhanced_anxiety_dataset_copy_nodup
DROP COLUMN Rows_Num;