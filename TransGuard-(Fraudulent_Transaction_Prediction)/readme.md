#  TransGuard – Fraud Prediction Model

A machine learning-based system for identifying fraudulent transactions in financial datasets. The model not only predicts fraud but also helps derive meaningful insights to support proactive fraud prevention strategies.

---

## 🧠 Problem Statement

To detect and classify **fraudulent financial transactions** based on transactional data, and develop an **actionable plan** using insights derived from the model.

---

## 📦 Dataset Overview

- **Format**: CSV
- **Rows**: 6,362,620
- **Columns**: 10
- **Source**: Internal/Provided by the financial company

The dataset contains transactional details such as transaction types, balances before and after transactions, origin and destination identifiers, and a target label indicating fraud.

---

## 🔁 Project Lifecycle

1. Data Ingestion  
2. Data Preparation  
   - Data Wrangling  
   - Feature Engineering  
3. Model Selection  
4. Model Training & Hyperparameter Tuning  
5. Model Evaluation  
6. Model Deployment

---

## 📥 Data Ingestion

- Imported as CSV using standard pandas utilities.
- Basic data profiling done to understand data types, missing values, and distribution.

---

## 🧹 Data Preparation

### 1. Data Wrangling

- **Data Completeness**:  
  Handled missing values using mean/mode imputation depending on the feature type.

- **Data Consistency**:  
  Checked data types using `df.info()` and standardized them as needed.

- **Data Uniqueness**:  
  Verified no duplicate `nameOrig` values across identical transactions.

- **Outlier Detection**:  
  Outliers identified but **not removed**, considering that high-value legitimate transactions exist. Chose models robust to outliers.

### 2. Data Analysis

- Fraudulent transactions occur **only through the 'TRANSFER'** mode.
- **CASH_OUT** mode showed no fraud.
- **Transaction mode frequency**:
- CASH_OUT > PAYMENT > CASH_IN > TRANSFER > DEBIT

---

## 🏗️ Feature Engineering

### i. Feature Selection

- **Feature Importance**:  
- Chi-Square test  
- Extra Trees Classifier visualization  
- **Correlation Analysis**:  
- Heatmaps and Pearson correlation used  
- Multicollinearity analyzed using VIF

### ii. Feature Encoding

- Label encoding applied to categorical features (`type`, `nameOrig`, `nameDest`).

### iii. Ranking Features

- Features ranked using `Chi2` scores.
- Extra Trees used to visualize top predictors.

### iv. Feature Extraction

- **PCA** applied to:
- `Org_Oldbalance`, `Org_Newbalance`, `Dest_Oldbalance`, `Dest_Newbalance`
- PCA vs non-PCA models were compared.

### v. Feature Dropping

- Dropped features with:
- Low importance
- High correlation  
Specifically: `Org_Newbalance` and `Dest_oldbalance`

---

## 🤖 Model Selection & Training

### 🔍 Considered Models

- XGBoost ✅
- GradientBoost ❌ (Overfitting)
- AdaBoost ❌ (Overfitting)
- RandomForest ❌ (Overfitting)

### 📌 Final Model: **XGBoost**

- Demonstrated best performance on both training and validation data.
- Robust to outliers and highly imbalanced datasets.

### 📊 Model Evaluation

| Metric        | Validation Set | Testing Set |
|---------------|----------------|-------------|
| Accuracy      | 0.9987         | 0.999       |
| Precision     | 0.9987         | 0.999       |
| Recall        | 0.9987         | 0.999       |
| F1 Score      | 0.9985         | 0.9988      |

#### Loss Function

- Used **Cross Entropy Loss** for multi-class classification.
- Ideal for handling probabilistic predictions and imbalanced classes.

---

## 🧾 Why Choose XGBoost?

1. **Performance**:  
 High accuracy and low variance, even on imbalanced data.

2. **Handles Imbalanced Data**:  
 Can assign class weights to improve recall on rare fraud cases.

3. **Regularization**:  
 L1 & L2 penalties prevent overfitting, improving generalization.

4. **Feature Importance**:  
 Insight into top features affecting fraud prediction.

5. **Speed**:  
 Fast training with efficient tree construction.

6. **Flexibility**:  
 Supports various objective functions and extensive parameter tuning.

7. **Community Support**:  
 Well-documented with active community support.

---

## 🧠 Conclusion

- **XGBoost outperforms other models** in detecting fraud.
- PCA helped with dimensionality reduction, but **model without PCA** was chosen due to better generalization and interpretability.
- Results demonstrate near-perfect classification accuracy and recall—ideal for mission-critical financial applications.

---

## 📌 Future Work

- Model deployment via REST API (e.g., FastAPI)
- Real-time transaction scoring
- Integration with dashboards for fraud monitoring

---




