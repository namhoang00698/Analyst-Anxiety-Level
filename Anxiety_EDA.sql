USE social_anxiety;

SELECT *
FROM enhanced_anxiety_dataset_copy_nodup;

SELECT AVG(`Age`) AS Avg_Age, MIN(`Age`) AS Min_Age, MAX(`Age`) AS Max_Age
FROM enhanced_anxiety_dataset_copy_nodup; -- Thống kê tuổi trung bình của dataset

SELECT `Sleep Hours`, AVG(`Anxiety Level (1-10)`)
FROM enhanced_anxiety_dataset_copy_nodup
GROUP BY `Sleep Hours`
ORDER BY `Sleep Hours`;