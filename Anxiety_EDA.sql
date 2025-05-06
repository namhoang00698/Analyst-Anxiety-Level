USE social_anxiety;

SELECT *
FROM enhanced_anxiety_dataset_copy_nodup;

-- Thống kê tuổi trung bình của dataset
SELECT AVG(`Age`) AS Avg_Age, MIN(`Age`) AS Min_Age, MAX(`Age`) AS Max_Age
FROM enhanced_anxiety_dataset_copy_nodup;

-- Phân tích tác động của lối sống tới mức độ lo âu
-- Tác động của số giờ ngủ tới mức độ lo âu
SELECT `Sleep Hours`, AVG(`Anxiety Level (1-10)`)
FROM enhanced_anxiety_dataset_copy_nodup
GROUP BY `Sleep Hours`
ORDER BY `Sleep Hours`;
-- Tác động của việc tiêu thụ caffeine tới mức độ lo âu
SELECT `Caffeine Intake (mg/day)`, AVG(`Anxiety Level (1-10)`)
FROM enhanced_anxiety_dataset_copy_nodup
GROUP BY `Caffeine Intake (mg/day)`
ORDER BY `Caffeine Intake (mg/day)`;
-- Tác động của việc tập thể dục tới mức độ lo âu
SELECT `Physical Activity (hrs/week)`, AVG(`Anxiety Level (1-10)`) AS avg_anxiety
FROM enhanced_anxiety_dataset_copy_nodup
GROUP BY `Physical Activity (hrs/week)`
ORDER BY `avg_anxiety`;
-- Tác động của việc thu nạp chất cồn tới mức độ lo âu
SELECT `Alcohol Consumption (drinks/week)`, AVG(`Anxiety Level (1-10)`) AS avg_anxiety
FROM enhanced_anxiety_dataset_copy_nodup
GROUP BY `Alcohol Consumption (drinks/week)`
ORDER BY `Anxiety Level (1-10)`;
-- Chỉ số mức độ lo âu trung bình khi hút thuốc và tiền sử tâm lý gia đình
SELECT `Smoking`, `Family History of Anxiety`, AVG(`Anxiety Level (1-10)`) AS `AVG_Anxiety Level (1-10)`
FROM enhanced_anxiety_dataset_copy_nodup
GROUP BY `Smoking`, `Family History of Anxiety`
ORDER BY `Smoking`, `Family History of Anxiety`;
