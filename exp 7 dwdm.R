# Given value for age
age_value <- 35

# Sample age data (replace this with your actual data)
age <- c(25, 30, 35, 40, 45, 50)

# (i) Min-max normalization
min_age <- min(age)
max_age <- max(age)
min_max_age <- (age_value - min_age) / (max_age - min_age)

# (ii) Z-score normalization
mean_age <- mean(age)
sd_age <- sd(age)
z_score_age <- (age_value - mean_age) / sd_age

# (iii) Normalization by decimal scaling
scale_factor <- 10 ^ ceiling(log10(max(age)))
decimal_scaled_age <- age_value / scale_factor

# Print the results
cat("Min-max normalization for age:", min_max_age, "\n")
cat("Z-score normalization for age:", z_score_age, "\n")
cat("Normalization by decimal scaling for age:", decimal_scaled_age, "\n")
