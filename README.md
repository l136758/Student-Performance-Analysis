# Student Performance Analysis

## Overview

This project analyzes student performance data using R to explore factors associated with academic performance and build a linear regression model for predicting the Performance Index.

The analysis includes data exploration, data preparation, statistical analysis, model development, model evaluation, and data visualization.

## Objectives

- Explore and understand the student performance dataset.
- Prepare the data for analysis.
- Analyze factors related to student performance.
- Build a linear regression model to predict the Performance Index.
- Evaluate the performance of the regression model.
- Visualize relationships between student performance and selected variables.

## Tools & Technologies

- R
- RStudio
- Linear Regression
- Statistical Analysis
- Data Visualization

## Dataset

**Dataset:** Student Performance Dataset

**Source:** Kaggle

The dataset contains 10,000 student records and includes variables such as:

- Hours Studied
- Previous Scores
- Extracurricular Activities
- Sleep Hours
- Sample Question Papers Practiced
- Performance Index

Dataset source:
https://www.kaggle.com/datasets/nikhil7280/student-performance-multiple-linear-regression

## Data Preparation

The dataset was prepared for analysis by:

- Checking for missing values.
- Reviewing the structure and summary statistics of the dataset.
- Converting the `Extracurricular Activities` variable from categorical values (`Yes` / `No`) to numeric values (`1` / `0`).
- Preparing the variables for statistical analysis and modeling.

## Exploratory Data Analysis

Exploratory analysis was performed to understand the relationships between student characteristics and academic performance.

The analysis examined variables including:

- Previous Scores
- Hours Studied
- Extracurricular Activities
- Performance Index

Visualizations were used to identify patterns and relationships in the data.

## Linear Regression Model

A simple linear regression model was developed to predict the **Performance Index** using **Previous Scores** as the predictor.

The regression equation was:

**Performance Index = -15.182 + (1.014 × Previous Scores)**

The model indicates a strong positive relationship between Previous Scores and Performance Index.

## Model Evaluation

The regression model was evaluated using statistical performance metrics:

- **R²:** 0.8376
- **MSE:** 59.95
- **p-value:** < 0.0001

The R² value indicates that approximately **83.8% of the variation in Performance Index** is explained by Previous Scores in this model.

## Key Findings

- Previous Scores showed a strong positive relationship with Performance Index.
- The regression model explained approximately 83.8% of the variation in student performance.
- Students with higher Previous Scores generally achieved higher Performance Index values.
- Extracurricular Activities showed little measurable difference in Performance Index.
- Average Performance Index increased as Hours Studied increased.
- Previous academic performance may be useful as an indicator when analyzing future student performance.

## Project Structure

```text
Student-Performance-Analysis/
│
├── data/
│   └── Student_Performance.csv
│
├── src/
│   └── student_performance_analysis.R
│
├── report/
│   └── student_performance_report.pdf
│
└── README.md
