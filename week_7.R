# Install required packages (if needed)
# install.packages("Matrix", type = "binary")
# install.packages("lme4", type = "binary")
# install.packages("ggplot2", type = "binary")

# Load necessary libraries
library(lme4)
library(Matrix)
library(ggplot2)

# Read the dataset
data <- read.csv("C:/IDC6940/oasis_longitudinal.csv")

# Check for missing or non-finite values in the data
summary(data)

# Clean the data by removing rows with missing values (e.g., Age, MMSE, or M.F)
data_clean <- na.omit(data)

# Fit LMM using lmer() from the lme4 package on cleaned data
model <- lmer(MMSE ~ Age + (1 | Subject.ID), data = data_clean)

# Fit LMM with interaction between Age and Gender (M.F)
model_2 <- lmer(MMSE ~ Age * M.F + (1 | Subject.ID), data = data_clean)

# View model summaries
summary(model_2)
summary(model)

# Scatterplot for model 1: Age vs MMSE
ggplot(data_clean, aes(x = Age, y = MMSE)) +
  geom_jitter(alpha = 0.6, color = "black") +  
  geom_smooth(method = "lm", color = "blue", se = TRUE) +  
  labs(title = "MMSE vs. Age", x = "Age", y = "MMSE Score") +  
  theme_minimal()  

# Box Plot: MMSE by Age Group (Decades)
ggplot(data_clean, aes(x = cut(Age, breaks = seq(50, 100, 10)), y = MMSE)) +
  geom_boxplot(fill = "lightblue", color = "darkblue") +
  labs(title = "Boxplot of MMSE by Age Group", x = "Age Group (Decades)", y = "MMSE Score") +
  theme_minimal()

# Histogram of MMSE Scores
ggplot(data_clean, aes(x = MMSE)) +
  geom_histogram(binwidth = 2, fill = "lightblue", color = "black", alpha = 0.7) +
  labs(title = "Histogram of MMSE Scores", x = "MMSE Score", y = "Frequency") +
  theme_minimal()

# Scatterplot for model 2: Age vs MMSE by Gender
ggplot(data_clean, aes(x = Age, y = MMSE, color = M.F)) +
  geom_jitter(alpha = 0.6) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(title = "MMSE vs. Age by Gender", x = "Age", y = "MMSE Score") +
  theme_minimal()


