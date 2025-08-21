import pandas as pd
import mysql.connector

# Connect to MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root_",
    database="projects"
)

cursor = conn.cursor()

# Load CSV
df = pd.read_csv("ecommerce_data.csv")  # Ensure this file is in your working directory

# Convert Purchase Date to datetime format
df['Purchase Date'] = pd.to_datetime(df['Purchase Date'], errors='coerce')

# Create table if not exists
cursor.execute("""
    CREATE TABLE IF NOT EXISTS ecommerce_data (
        Customer_ID BIGINT,
        Purchase_Date DATETIME,
        Product_Category VARCHAR(100),
        Product_Price INT,
        Quantity INT,
        Total_Purchase_Amount INT,
        Payment_Method VARCHAR(50),
        Customer_Age INT,
        Returns FLOAT,
        Customer_Name VARCHAR(255),
        Age INT,
        Gender VARCHAR(10),
        Churn INT
    )
""")

# Insert data row by row
for _, row in df.iterrows():
    cursor.execute("""
        INSERT INTO ecommerce_data (
            Customer_ID, Purchase_Date, Product_Category, Product_Price,
            Quantity, Total_Purchase_Amount, Payment_Method, Customer_Age,
            Returns, Customer_Name, Age, Gender, Churn
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """, (
        int(row['Customer ID']),
        row['Purchase Date'].to_pydatetime() if pd.notnull(row['Purchase Date']) else None,
        row['Product Category'],
        int(row['Product Price']),
        int(row['Quantity']),
        int(row['Total Purchase Amount']),
        row['Payment Method'],
        int(row['Customer Age']),
        float(row['Returns']),
        row['Customer Name'],
        int(row['Age']),
        row['Gender'],
        int(row['Churn'])
    ))

# Commit and close
conn.commit()
print("Ecommerce data imported successfully into MySQL.")
conn.close()
