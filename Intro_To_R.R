# Introduction to R 

#install.packages("tidvyerse")
## install.packages("nycflights13")

library(tidyverse)
library(nycflights13)
library(viridis)

list.files()

foobar <- read_csv("diamonds.csv")

diamonds

flights

# Dplyr Verbs 

## Filter

View(flights)

## First day of year? 

filter(flights, day == 1, origin == "EWR" | month == 2)

## wrapping in parenthsis 

## the %in%

filter(flights, day == 1 | origin %in% c("EWR", "JFK"))

## Select 

select(flights, -dep_time)

## Pipe 


filter(flights, day == 1 | origin %in% c("EWR", "JFK"))

flights %>%
  select(dest) %>%
  unique()

flights %>%
  filter(day == 1 & month == 1) %>%
  filter(dest %in% c("IAH", "MIA","BQN","ATL","ORD","FLL",
                     "IAD","MCO","TPA")) %>%
  select(ends_with("time"), dest) %>%
  group_by(dest) %>%
  mutate(dep_time_5 = dep_time + 5) %>%
  select(dep_time, dep_time_5, air_time, dest) %>%
  summarise(avg_time = mean(air_time, na.rm = TRUE)) %>%
  arrange(desc(avg_time)) %>%
  ggplot(aes(x = dest, y = avg_time)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Time To These Airports",
       x = "Destination",
       y = "Average Time") +
  coord_flip()

ggplot(flights, aes(x = air_time, y = distance, color = origin)) +
  geom_point()

ggplot(iris, aes(x = Sepal.Length, 
                 y = Sepal.Width, 
                 color = Species)) +
  geom_point() +
  labs(title = "My Beautiful Plot", 
       x = "Sepal Length", 
       y = "Sepal Width") + 
  geom_smooth(se = FALSE, method = "lm") +
  facet_wrap(~Species) +
  viridis::scale_color_viridis(discrete = TRUE,begin = .2,end = .6)

flights %>%
  select(dest) %>%
  group_by(dest) %>%
  summarise(counts = n())

flights %>%
  colnames()



## Mutate

## Arrange

## Summerise 

## Group By 


iris %>%
  filter(Species != "versicolor") -> our_test_data

t.test(Sepal.Length ~ Species, data = our_test_data, var.equal = TRUE)


diamonds

price_prediction_1 <- lm(price ~ carat, data = diamonds)

summary(price_prediction_1)

plot(price_prediction_1)


price_prediction_2 <- lm(price ~ ., data = diamonds)

summary(price_prediction_2)

plot(price_prediction_2)


