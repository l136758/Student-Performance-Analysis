#Reading the dataset that we're going to work on
df = read.csv("Student_Performance.csv")

#Data exploration with some R functions
summary(df)
str(df)
head(df)

#Data preparation

sum(is.na(df)) #Checking if we have any Nulls values and sum it up

#Converting the Extracurricular Activities column here from categorical "Yes/No"
#to numeric "1 and 0" to make it suitable for regression analysis

df$Extracurricular.Activities = ifelse(df$Extracurricular.Activities == "Yes", 1, 0)

#Checking the new values of this column after converting
head(df$Extracurricular.Activities)

#Building a linear regression model
model = lm(Performance.Index ~ Previous.Scores, data = df)
model

summary(model)

#Predict the Performance Index given Previous Scores of 70, 85, and 90 based on this model
new_data = data.frame(Previous.Scores = c(70, 85, 90))

predicted_index = predict(model, new_data)
predicted_index

#Model performance evaluation : predictions, MSE, and R-squared
predictions= predict(model,df)
print(head(predictions))
mse = mean((df$Performance.Index - predictions)^2)
mse
summary(model)$r.squared

#Simple visualization for the evaluation task showing actual vs predicted values.
predicted_values=predict(model)
plot(df$Performance.Index,predicted_values,
     main="Actual vs Predicted perfomance index ",
     xlab="Actual perfomance index",
     ylab="Predicted perfomance index",col="rosybrown4",pch=16,cex=1.1)
abline(a = 0, b = 1, col = "red", lwd = 2)

#Plot 1: Scatterplot of Performance Index vs Previous Scores with Regression Line
plot(df$Previous.Scores, df$Performance.Index, 
     main="Performance Index vs Previous Scores",
     xlab="Previous Scores", ylab="Performance Index",col="lightsteelblue3",pch=16,cex=1.1)
abline(model, col="maroon")

#Plot 2:Boxplot Comparison
boxplot(Performance.Index ~ factor(Extracurricular.Activities,
                                   labels = c("No","Yes")),
        data = df,
        main = "Performance Index by Extracurricular Activities",
        xlab = "Extracurricular Activities",
        ylab = "Performance Index",
        col  = "plum4")

# Calculate the average Performance Index for each Hours Studied group
avg = aggregate(Performance.Index ~ Hours.Studied, data = df, mean)

# Plot 3 :bar plot showing the relationship between study hours and average performance
barplot(avg$Performance.Index,
        names.arg = avg$Hours.Studied,
        main = "Performance Index by Hours Studied",
        xlab = "Hours Studied",
        ylab = "Average Performance Index",
        col = "red4")


