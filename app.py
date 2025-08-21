# app.py

import streamlit as st
import pandas as pd
import joblib

# Load model and encoders
model = joblib.load('C:\\Users\\Dhusyath\\Downloads\\PROJECTS_DA\\PROJECTS_DA\\ecommerce customer\\churn_model.pkl')
label_encoders = joblib.load('C:\\Users\\Dhusyath\\Downloads\\PROJECTS_DA\\PROJECTS_DA\\ecommerce customer\\label_encoders.pkl')
feature_names = joblib.load('C:\\Users\\Dhusyath\\Downloads\\PROJECTS_DA\\PROJECTS_DA\\ecommerce customer\\feature_names.pkl')

st.title("🛍️ E-Commerce Customer Churn Predictor")

# Input form
user_input = {}

# Categorical inputs
for col in ["Product Category", "Payment Method", "Gender"]:
    options = label_encoders[col].classes_.tolist()
    selected = st.selectbox(f"{col}", options)
    encoded = label_encoders[col].transform([selected])[0]
    user_input[col] = encoded

# Numeric inputs
user_input["Product Price"] = st.number_input("Product Price", min_value=0.0)
user_input["Quantity"] = st.number_input("Quantity", min_value=1)
user_input["Total Purchase Amount"] = st.number_input("Total Purchase Amount", min_value=0.0)
user_input["Customer Age"] = st.number_input("Customer Age", min_value=10, max_value=100)
user_input["Returns"] = st.selectbox("Returns", options=[0.0, 1.0])
user_input["Age"] = st.number_input("Age", min_value=10, max_value=100)

# Predict button
if st.button("Predict Churn"):
    input_df = pd.DataFrame([user_input])[feature_names]
    prediction = model.predict(input_df)[0]
    st.success(f"🔍 Prediction: {'Will Churn' if prediction == 1 else 'Will Not Churn'}")
