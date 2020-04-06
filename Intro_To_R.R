#------------------------------------------------------------
# R Workshop 
# install.packages("tidvyerse")
# install.packages("nycflights13")
#------------------------------------------------------------
# The RStudio IDE 


#------------------------------------------------------------
# Import Libraries 
library(tidyverse)



#------------------------------------------------------------
# Differences with Python (masking, modules)
#readr::read_csv()

#------------------------------------------------------------
# Read in Data with readr

my_diamonds <- read_csv("diamonds.csv")

#------------------------------------------------------------
# Tibbles 
diamonds


#------------------------------------------------------------
# Viewing Data 
View(diamonds)
diamonds
head(diamonds)

str(diamonds)

foo2 <- c(1:10)

foo2 * 2

#------------------------------------------------------------
# dplyr Verbs (data, arguments, others)
diamonds
## Select 
select(diamonds, cut:depth)
## colon, ends_with, starts_with

filter(diamonds, color == "E"  | color == "J")

## Filter

## %in% operator 
filter(diamonds, color %in% c("E","J"))

## Mutate

diamonds_with_gbp <- mutate(diamonds, gbp = price * 1.33)
(diamonds_with_gbp <- mutate(diamonds, gbp = price * 1.33))

## Transmutate 
transmute(diamonds, gbp = price * 1.33)

## Arrange

arrange(diamonds, desc(price))
arrange(diamonds, desc(price, color))

### desc() 

## Group By 

select(diamonds, color, clarity)

diamonds %>%
  select(color, clarity, carat, depth, price) %>%
  filter(price > 1000) %>%
  group_by(color, clarity) %>%
  summarise(mean_price_of_color = mean(price))

## Summerise 

## Pipe 

#-------------------------------------------------------------
# ggplot2

## grammar of graphics 

# geom

## Scatter Plots 

diamonds %>%
  filter(color != "E") %>%
  ggplot(aes(x = carat, y = price, color = cut)) +
  geom_point() +
  labs(title = "My New Diamond Plot", 
       y = "Price in USD", 
       x = "Carat") +
  theme_minimal() +
  facet_wrap(~color) +
  geom_smooth(method = "lm")

## Bar Plots (identity, position, summary)

diamonds %>%
  ggplot(aes(x = cut, fill = color)) +
  geom_bar() 


diamonds %>%
  select(carat, price, depth) %>%
  cor() %>%
  ggcorrplot(method = "circle")


library(ggcorrplot)



## Facet Wrapping

## aesthetics

## Controling fill, color 

## Themes 

## labs 

#-------------------------------------------------------------
# Running Linear Models in R 


# thing_I_am_predicting ~ things + that + predict + it 

model_1 <- lm(price ~ carat, data = diamonds)

summary(model_1)


# s3 

plot(model_1)


model_2 <- lm(price ~ carat + depth, data = diamonds)

summary(model_2)

anova(model_1, model_2)









