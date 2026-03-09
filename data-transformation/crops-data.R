data <- read.csv(file = file.choose())

data$Country=as.factor(data$Country)

summary(data)

library(dplyr)
## summarizing by Crop types
crop<- data %>%
  group_by(Crop) %>%
  summarize(yr_min= min(Year), yr_max= max(Year))

crop

## summarizing by Country
country<- data %>%
  group_by(Country) %>%
  summarize(yr_min= min(Year), yr_max= max(Year))

country

## summarizing by information
info<- data %>%
  group_by(Information) %>%
  summarize(yr_min= min(Year), yr_max= max(Year))

info

## summarizing two variables in a single pipe
data.grp<- data %>%
  filter(Information=="Yield (Hg/Ha)",
         Year >= 2005 & Year <= 2010,
         Country== "United States of America")%>%
  group_by(Crop) %>%
  summarize(Yield= mean(Value), `Number of Years`= max(Year) - min(Year))

data.grp

##

dfdata<- data %>%
  mutate(data,
        ctry=ifelse(Country=="United States of America", "USA" , Country))

  