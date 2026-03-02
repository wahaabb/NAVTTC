# ==================================================
# Welch Two-Sample T-Test Analysis in R
# Multiple Dataset Comparisons
# ==================================================


# --------------------------------------------------
# Example 1: Class Score Comparison
# --------------------------------------------------

class_A <- c(85, 88, 90, 87, 84, 92, 89, 93, 85, 86)
class_B <- c(78, 75, 80, 77, 72, 70, 74, 79, 75, 72)

# Perform Welch Two-Sample T-Test
class_test <- t.test(class_A, class_B)
class_test

# Mean values
mean(class_A)
mean(class_B)

# Boxplot Visualization
boxplot(class_A, class_B,
        names = c("Class A", "Class B"),
        col = c("lightblue", "lightgreen"),
        main = "Comparison of Class Scores",
        ylab = "Scores")



# --------------------------------------------------
# Example 2: Blood Pressure Before vs After Treatment
# --------------------------------------------------

before_treatment <- c(120, 125, 130, 118, 123, 135, 128, 121, 126, 130)
after_treatment  <- c(115, 120, 118, 110, 112, 125, 119, 116, 120, 121)

# Perform Welch Two-Sample T-Test
bp_test <- t.test(before_treatment, after_treatment)
bp_test

# Mean values
mean(before_treatment)
mean(after_treatment)

# Boxplot Visualization
boxplot(before_treatment, after_treatment,
        names = c("Before", "After"),
        col = c("skyblue", "orange"),
        main = "Blood Pressure Before vs After Treatment",
        ylab = "Blood Pressure")



# --------------------------------------------------
# Example 3: Height Comparison (Men vs Women)
# --------------------------------------------------

men_height <- c(175, 180, 178, 172, 185, 169, 183, 177, 170, 179)
women_height <- c(162, 158, 165, 160, 155, 162, 163, 168, 160, 157)

# Perform Welch Two-Sample T-Test
height_test <- t.test(men_height, women_height)
height_test

# Mean values
mean(men_height)
mean(women_height)

# Boxplot Visualization
boxplot(men_height, women_height,
        names = c("Men", "Women"),
        col = c("lightcoral", "lightpink"),
        main = "Height Comparison: Men vs Women",
        ylab = "Height (cm)")



# --------------------------------------------------
# Example 4: Regional Income Comparison
# --------------------------------------------------

region1_income <- c(45000, 48000, 50000, 46000, 47000, 52000, 49000, 48000, 51000, 47500)
region2_income <- c(55000, 54000, 56000, 57000, 54000, 55000, 53500, 52500, 52000, 51000)

# Perform Welch Two-Sample T-Test
income_test <- t.test(region1_income, region2_income)
income_test

# Mean values
mean(region1_income)
mean(region2_income)

# Boxplot Visualization
boxplot(region1_income, region2_income,
        names = c("Region 1", "Region 2"),
        col = c("lightyellow", "lightgray"),
        main = "Regional Income Comparison",
        ylab = "Income")
# --------------------------------------------------
# Example 5: Exercise Duration Comparison Between Two Groups
# --------------------------------------------------

group1_exercise <- c(45, 50, 40, 38, 60, 50, 48, 52, 55, 44)
group2_exercise <- c(30, 25, 28, 35, 20, 30, 33, 25, 26, 31)

# Perform Welch Two-Sample T-Test
exercise_test <- t.test(group1_exercise, group2_exercise)

exercise_test

# Mean values
mean(group1_exercise)
mean(group2_exercise)

# Boxplot Visualization
boxplot(group1_exercise, group2_exercise,
        names = c("Group 1", "Group 2"),
        col = c("lightblue", "lightgreen"),
        main = "Exercise Duration Comparison Between Two Groups",
        ylab = "Duration (Minutes)")
# --------------------------------------------------
# Example 6: Plant Growth Comparison in Two Soil Types
# --------------------------------------------------

soil_type1_growth <- c(12.5, 15.0, 14.8, 13.3, 12.2, 14.1, 12.8, 13.5, 15.2, 13.6)
soil_type2_growth <- c(10.2, 9.7, 11.0, 9.8, 9.5, 10.1, 10.4, 9.9, 9.8, 10.3)

# Perform Welch Two-Sample T-Test
soil_test <- t.test(soil_type1_growth, soil_type2_growth)

soil_test

# Mean values
mean(soil_type1_growth)
mean(soil_type2_growth)

# Boxplot Visualization
boxplot(soil_type1_growth, soil_type2_growth,
        names = c("Soil Type 1", "Soil Type 2"),
        col = c("lightgreen", "lightbrown"),
        main = "Plant Growth Comparison in Two Soil Types",
        ylab = "Growth (cm)")