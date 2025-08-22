# 🛒 Amazon Customer Analysis

A comprehensive analytics solution designed to understand customer behavior, purchasing patterns, and churn risk in an Amazon environment. This system empowers marketing teams, product managers, and business analysts with predictive insights and interactive dashboards.

---

## 🚗 GitHub Project Repository  
🔗 [Click to view Amazon-Customer-Analysis](https://github.com/aneshraj-d96/Amazon-Customer-Analysis)

---

## 🧠 Project Overview

Understanding customer behavior is key to driving retention, personalization, and profitability. This project analyzes **250,000+ customer transactions** to uncover purchasing trends, churn indicators, and demographic influences.

**Key Objectives:**
- Clean and preprocess customer transaction data  
- Engineer features for churn modeling and dashboarding  
- Build classification models to predict churn  
- Deploy interactive dashboards for business decision-making  

---

## 📁 Project Structure

| File Name                             | Description                                                                 |
|--------------------------------------|-----------------------------------------------------------------------------|
| `ecommerce_customer_data_large.csv`  | Raw dataset with customer transactions                                     |
| `cleaned_ecommerce.csv`              | Preprocessed dataset with feature engineering                              |
| `churn_model.pkl`                    | Trained model for churn prediction                                         |
| `feature_names.pkl`                 | Feature list used in model training                                        |
| `label_encoders.pkl`                 | Encoders for categorical variables                                         |
| `ecommerce.sql`                      | SQL queries for data extraction and filtering                              |
| `sqlconnect.py`                      | Python script for SQL database connection                                  |
| `app.py`                             | Streamlit app for dashboard deployment                                     |
| `E_COMMERCE.ipynb`                   | Jupyter notebook with EDA, modeling, and insights                          |
| `ecommerce_customer_analysis_dashboard` | Interactive dashboard file (Streamlit or Power BI)                       |

---

## 🧹 Data Preprocessing

- Imputed missing values in `Returns` and `Product Price`  
- Normalized continuous variables (`Total Purchase Amount`, `Customer Age`)  
- Encoded categorical features (`Payment Method`, `Product Category`, `Gender`)  
- Removed outliers in `Quantity` and `Price`  
- Verified data types and optimized memory usage  

---

## 📈 Exploratory Data Analysis

- Purchase trends across product categories and payment methods  
- Age and gender segmentation of customers  
- Return behavior and its impact on churn  
- Correlation matrix of purchase features and churn  
- Seasonal and temporal purchase patterns  

---

## 🤖 Modeling Approach

- **Target Variable**: `Churn`  
- **Algorithms Used**: Logistic Regression, Random Forest, XGBoost  
- **Evaluation Metrics**: Accuracy, Precision, Recall, F1 Score  
- **Feature Importance**: `Returns`, `Total Purchase Amount`, `Product Category`, `Payment Method`, `Customer Age`  

---

## 📊 Dashboard Overview

### 🔷 Power BI Dashboard  
Explore interactive visuals on customer segmentation, churn risk, and purchasing behavior.  
🔗 [View Power BI Dashboard](https://app.powerbi.com/view?r=eyJrIjoiYjYwYjYxZTAtZGM5NS00ZTYxLTg4YjUtYjQ1YjYxYzYxYjYxIiwidCI6IjYyYjYxYjYxLTYyYjYtNDYyYi1iYjYxLTYyYjYxYjYxYjYxMiIsImMiOjF9)

![Power BI Preview](https://image2url.com/images/1755858647825-bc49bf95-c001-4864-8fff-255ec607cd5a.png)
![Power BI Preview](https://image2url.com/images/1755859155786-589a26a3-707e-44c8-905a-62495f20430f.png)

---

### 🟢 Streamlit App  
Live dashboard with dynamic filters and churn prediction interface.  
🔗 [Launch Streamlit App](https://amazon-customer-analysis.streamlit.app)

![Streamlit Preview](https://image2url.com/images/1755859272930-a9cb3916-ff78-4a92-bca7-1d0150a67e14.png)
![Streamlit Preview](https://image2url.com/images/1755859328015-d79870ad-4e0b-43fa-a927-f2e46d835125.png)

---

## 🚀 Deployment

- Model serialized with `joblib` as `churn_model.pkl`  
- Dashboard deployed via **Streamlit Cloud**  
- SQL integration for dynamic customer querying  
- Git LFS used for large file management  

---

## 🧠 Business Impact

- Identifies high-risk churn segments for retention campaigns  
- Improves targeting strategies based on purchase behavior  
- Enhances product bundling and pricing decisions  
- Supports personalized marketing with demographic insights  

---

## 🛠️ Tech Stack

- **Python**: Pandas, NumPy, Scikit-learn, Streamlit  
- **SQL**: Data extraction and filtering  
- **Visualization**: Matplotlib, Seaborn, Plotly  
- **Deployment**: Streamlit Cloud, GitHub, Git LFS  

---

## 📌 Future Enhancements

- Integrate NLP for customer review sentiment analysis  
- Add lifetime value prediction for customer cohorts  
- Enable user-uploaded transaction logs for analysis  
- Expand dashboard to include product recommendation engine  

---

## 👤 Author

**Anesh Raj**   
🔗 [GitHub Profile](https://github.com/aneshraj-d96)
