setwd('C:/Users/amore_6ou078y/OneDrive/Documents/UP Subjects/Stat 134/Statistical Report/Datasets')
dataset <- readRDS("C:/Users/amore_6ou078y/OneDrive/Documents/UP Subjects/Stat 134/Statistical Report/Datasets/dataset.rds")
View(dataset)
colSums(is.na(dataset))
install.packages("naniar")
library(naniar)
vis_miss(dataset)


## Cleaning the dataset
library(dplyr)
library(forcats)
library(haven)
sapply(dataset, class)


dataset$V106 <- as_factor(dataset$V106)
dataset$V130 <- as_factor(dataset$V130)
dataset$V131 <- as_factor(dataset$V131)
dataset$V190 <- as_factor(dataset$V190)
dataset$V217 <- as_factor(dataset$V217)
dataset$V221 <- as_factor(dataset$V221)
dataset$V244 <- as_factor(dataset$V244)
dataset$V301 <- as_factor(dataset$V301)
dataset$V302A <- as_factor(dataset$V302A)
dataset$V312 <- as_factor(dataset$V312)
dataset$V364 <- as_factor(dataset$V364)
dataset$V384A <- as_factor(dataset$V384A)
dataset$V384B<- as_factor(dataset$V384B)
dataset$V38B<- a
                          
                          



# Recoding educational level 
dataset <- dataset %>% 
  mutate(V106 - factor(V106,
                       levels = c(0, 1, 2, 3, 8),
                       labels = c("No education", "Primary", "Secondary", "Higher", "Don't Know")))
# Recoding religion
dataset <- dataset %>%
  mutate(V130 - factor(V130, 
                       levels = c(1, 2, 3, 4, 5, 6, 96, 97),
                       labels = c("Roman Catholic", "Protestant","Iglesia ni Cristo", "Aglipay", "Islam", "Other Christian", "Other", "None")))
         
# Recoding ethnicity 
dataset <- dataset %>% 
  mutate(V131 - factor(V131, 
                       levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 96),
                       labels - c("Tagalog", "Cebuano", "Ilokano", "Ilonggo", "Bikolano", "Kapampangan", "Maranao", "Tausog", "Aeta Katutubo", "Akeanon", "Antiquenia", "Ablaan", "Visaya", "Boholano", "Chavacano", "Cuyuno", "Balangao", "Higaonon", "Ibabag", "Aplai", "Tuwali", "Ivatan", "Maguindanao", "Manobo", "Mandaya", "Masbateno", "Negrense", "Pangadinense", "Romblomano", "Sama", "Siquijodnon", "Kalibunan", "Surigaonon", "Kaulo", "Teduray", "Tinggian", "Waray", "Kayan", "Bagobo", "Iranon", "Samal Bangin", "Other" )))

# Recoding wealth index
dataset <- dataset %>%
  mutate(V190 - factor(V190, 
                       levels = c(1, 2, 3, 4, 5),
                       labels = c("Poorest", "Poorer", "Middle", "Richer", "Richest")))

# Recoding knowledge of ovulatory cycle
dataset <- dataset %>%
  mutate(V217 - factor(V217,
                       levels = c(1, 2, 3, 4, 5, 6, 8),
                       labels - c("During her period", "After period ended", "Middle of the cycle", "Before period", "At any time", "Other", "Don't Know")))

# Recoding marriage to first birth interval (months)
dataset <- dataset %>% 
  mutate(V221 - factor(V221,
                       levels = c(996),
                       labels = c("Negative Interval")))

# Recoding "Can women get pregnant after birth and before period"
dataset <- dataset %>% 
  mutate(V244 - factor(V244,
                       levels = c(0, 1, 8),
                       labels = c("No", "Yes", "Don't Know")))

# Recoding knowledge of any contraceptive method
dataset <- dataset %>% 
  mutate(V301 - factor(V301,
                       levels = c(0, 1, 2, 3),
                       labels = c("Knows no method", "Knows only folkloric method", "Knows only traditional method", "Knows modern method")))

# Recoding "Ever used anything or tried to delay or avoid getting pregnant"
dataset <- dataset %>%
  mutate(V302A - factor(V302A,
                        levels = c(0, 1),
                        labels = c("No", "Yes")))

# Recoding current contraceptive method
dataset <- dataset %>%
  mutate(V312 - factor(V312, 
                       levels = c(0, 1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22)))

# Recoding contraceptive use and intention
dataset <- dataset %>%
  mutate(V364 - factor(V364,
                       levels = c(1, 2, 3, 4, 5),
                       labels = c("Using modern method", "Using traditional method", "Non-user - intends to use later", "Does not intend to use", "Never had sex")))

# Recoding family planning - radio
dataset <- dataset %>%
  mutate(V384A - factor(V384A,
                        levels = c(0, 1),
                        labels = c("No", "Yes")))

# Recoding family planning - TV
dataset <- dataset %>%
  mutate(V384B - factor(V384B,
                        levels = c(0, 1),
                        labels = c("No", "Yes")))

# Recoding family planning - newspaper/magazine
dataset <- dataset %>%
  mutate(V384C - factor(V384C,
                        levels = c(0, 1),
                        labels = c("No", "Yes")))

# Recoding family planning - text messages
dataset <- dataset %>%
  mutate(V384D - factor(V384D,
                        levels = c(0, 1),
                        labels = c("No", "Yes")))

