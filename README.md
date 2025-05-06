# English
# 🧠 Social Anxiety Lifestyle Analysis

This project explores how various lifestyle factors affect self-reported anxiety levels using structured SQL queries on a cleaned dataset. The analysis focuses on trends between anxiety levels and behaviors such as sleep, caffeine intake, alcohol consumption, exercise, smoking, and family mental health history.

# Dataset
The analysis is based on the `enhanced_anxiety_dataset_copy_nodup` table containing anonymized survey data including:
- Age
- Sleep Hours
- Caffeine Intake (mg/day)
- Physical Activity (hrs/week)
- Alcohol Consumption (drinks/week)
- Smoking
- Family History of Anxiety
- Anxiety Level (1–10)

# Technologies Used
- **SQL** (MySQL)
- **Data Cleaning**
- **Aggregation & Grouping**
- **Exploratory Data Analysis (EDA)**

# Key Analyses
- Average, minimum, and maximum age statistics
- Impact of sleep duration on anxiety
- Relationship between caffeine/alcohol intake and anxiety
- Anxiety level trends by physical activity
- Correlation between smoking, family history and anxiety

# Sample SQL Queries
``sql
-- Average age
SELECT AVG(`Age`) AS Avg_Age FROM enhanced_anxiety_dataset_copy_nodup;

-- Anxiety by sleep hours
SELECT `Sleep Hours`, AVG(`Anxiety Level (1-10)`)
FROM enhanced_anxiety_dataset_copy_nodup
GROUP BY `Sleep Hours`
ORDER BY `Sleep Hours`;


# Tiếng Việt
# Phân Tích Mức Độ Lo Âu Dựa Trên Lối Sống

Dự án này nhằm mục đích khám phá mối quan hệ giữa mức độ lo âu (theo thang điểm từ 1–10) và các yếu tố lối sống như: giấc ngủ, tiêu thụ caffeine, rượu, thể dục, hút thuốc, và tiền sử bệnh tâm lý trong gia đình. Phân tích được thực hiện bằng các truy vấn SQL trên bộ dữ liệu đã được làm sạch.

# Dữ liệu sử dụng
Dữ liệu nằm trong bảng `enhanced_anxiety_dataset_copy_nodup`, bao gồm các cột:
- Tuổi (Age)
- Số giờ ngủ mỗi ngày (Sleep Hours)
- Lượng caffeine tiêu thụ (mg/ngày)
- Số giờ hoạt động thể chất mỗi tuần
- Lượng rượu tiêu thụ (ly/tuần)
- Tình trạng hút thuốc (Có/Không)
- Tiền sử lo âu trong gia đình
- Mức độ lo âu (Anxiety Level từ 1 đến 10)

# Công cụ sử dụng
- **MySQL**
- **Truy vấn SQL**
- **Phân tích mô tả & tổng hợp**
- (Tuỳ chọn nâng cao: Python, Tableau, Power BI)

# Các phân tích chính
- Tính tuổi trung bình, nhỏ nhất và lớn nhất
- Mức độ lo âu trung bình theo số giờ ngủ
- Mối liên hệ giữa caffeine/rượu và lo âu
- Ảnh hưởng của thể dục, hút thuốc và tiền sử gia đình đến lo âu

# Ví dụ truy vấn SQL
``sql
-- Tính tuổi trung bình
SELECT AVG(`Age`) AS Avg_Age FROM enhanced_anxiety_dataset_copy_nodup;

-- Mức độ lo âu theo số giờ ngủ
SELECT `Sleep Hours`, AVG(`Anxiety Level (1-10)`)
FROM enhanced_anxiety_dataset_copy_nodup
GROUP BY `Sleep Hours`
ORDER BY `Sleep Hours`;
