# Student Performance Analysis

## Overview

This project analyzes student performance data using R to explore the relationship between students' previous academic achievement and their current performance.

A simple linear regression model was developed to predict the Performance Index based on Previous Scores. The project includes data exploration, data preparation, statistical modeling, model evaluation, and data visualization.

## Dataset

The analysis uses the Student Performance dataset from Kaggle, which contains 10,000 student records and six main variables:

- Hours Studied
- Previous Scores
- Extracurricular Activities
- Sleep Hours
- Sample Question Papers Practiced
- Performance Index

Dataset source:
https://www.kaggle.com/datasets/nikhil7280/student-performance-multiple-linear-regression

## Tools & Technologies

- R
- RStudio
- Linear Regression
- Statistical Analysis
- Data Visualization

## Data Exploration & Preparation

The dataset was explored using R functions such as `summary()`, `str()`, and `head()` to understand its structure and descriptive statistics.

The preparation process included:

- Checking the dataset for missing values.
- Confirming that the dataset contained no missing values.
- Converting Extracurricular Activities from categorical values (`Yes` / `No`) to numeric values (`1` / `0`) for analysis.

The dataset contains 10,000 observations. The average Previous Score was 69.45, the average Performance Index was 55.22, the average Hours Studied was 4.99 hours, and the average Sleep Hours was 6.53 hours.

## Variable Selection

The target variable was:

**Performance Index**

The independent variable selected for the regression model was:

**Previous Scores**

Previous Scores was selected after comparing the relationships between the variables and the Performance Index. It showed the strongest correlation with the target variable, making it the most suitable predictor for the model.

## Linear Regression Model

A simple linear regression model was built to predict the Performance Index using Previous Scores.

The regression equation was:

**Performance Index = -15.182 + (1.014 × Previous Scores)**

The model indicates a strong positive relationship between Previous Scores and Performance Index. On average, a one-point increase in Previous Scores is associated with an expected increase of approximately 1.014 points in the Performance Index.

The model was also used to generate predictions for students with Previous Scores of 70, 85, and 90.

## Model Evaluation

The model was evaluated using R-squared and Mean Squared Error (MSE).

- **R²:** 0.8376
- **MSE:** 59.95
- **p-value:** < 0.0001

The R² value indicates that approximately 83.8% of the variation in Performance Index is explained by Previous Scores in this model.

An Actual vs. Predicted plot was also used to visually evaluate the model's predictive performance.

## Data Visualization

Three main visualizations were created to explore the data:

### Performance Index vs Previous Scores

A scatter plot with a regression line showed a strong positive linear relationship between Previous Scores and Performance Index.

### Performance Index by Extracurricular Activities

A box plot compared students who participated in extracurricular activities with those who did not. The distributions and median performance were very similar between the two groups.

### Performance Index by Hours Studied

A bar plot showed a clear upward trend in average Performance Index as study hours increased from 1 to 9 hours.

## Key Findings

- Previous Scores showed a strong positive relationship with Performance Index.
- Previous Scores alone explained approximately 83.8% of the variation in Performance Index.
- Students with higher Previous Scores generally had higher Performance Index values.
- Extracurricular Activities showed little measurable difference in Performance Index between the two groups.
- Average Performance Index increased as the number of Hours Studied increased.
- Previous Scores may be useful as an early indicator when identifying students who may need academic support.

## Project Files

- [R Analysis Code](src/student_performance_analysis.R)
- [Dataset](data/Student_Performance.csv)
- [Final Report](report/student_performance_report.pdf)

## Team Members

- Layan Alazwari
- Shaden Banajah
- Buthaina Mohammad
- Layan Alharthi
