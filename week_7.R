
#install.packages("Matrix", type = "binary")
#install.packages("lme4", type = "binary")
library(lme4)
library(Matrix)
library(ggplot2)
data <- read.csv("C:/IDC6940/oasis_longitudinal.csv")

# Fit LMM using lmer() from the lme4 package
model <- lmer(MMSE ~ Age + (1 | Subject.ID), data = data)

summary(model)

# Scatterplot
ggplot(data, aes(x = Age, y = MMSE)) +
  geom_jitter(alpha = 0.6, color = "black") +  
  geom_smooth(method = "lm", color = "blue", se = TRUE) +  
  labs(title = "MMSE vs. Age", x = "Age", y = "MMSE Score") +  
  theme_minimal()  

#Box Plot
ggplot(data, aes(x = cut(Age, breaks = seq(50, 100, 10)), y = MMSE)) +
  geom_boxplot(fill = "lightblue", color = "darkblue") +
  labs(title = "Boxplot of MMSE by Age Group", x = "Age Group (Decades)", y = "MMSE Score") +
  theme_minimal()

#Histogram of MMSE Scores
# Histogram of MMSE scores
ggplot(data, aes(x = MMSE)) +
  geom_histogram(binwidth = 2, fill = "lightblue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of MMSE Scores", x = "MMSE Score", y = "Frequency") +
  theme_minimal()

