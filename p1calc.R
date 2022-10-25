##Project 1 Calculations
#install libraries
library(dplyr)
library(data.table)

##read in files
deaths = fread(file = 'deaths_age_sex.csv')

##count deaths for each age
age_count = deaths %>% count(age)
age_count

##create new df with result
Age = c(0, 1, 2, 3, 4, 5)
Deaths = c(143, 48, 58, 57, 91, 174)
age_df = data.frame(Age, Deaths)

##write file to csv
write.csv(age_df, 'age_df.csv')

##repeat process for gender
gender_count = deaths %>% count(gender)
gender_count

Gender = c(0, 1)
Deaths = c(284, 287)
gender_df = data.frame(Gender, Deaths)

write.csv(gender_df, 'gender_df.csv')
