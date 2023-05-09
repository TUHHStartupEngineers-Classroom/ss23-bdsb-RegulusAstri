
library(tidyverse)
library(ggplot2)
library(dplyr)


diamonds2 <- readRDS("cm_data/intro/diamonds2.rds")

diamonds2 %>%
  pivot_longer(cols = c('2008', '2009'),
               names_to = 'year',
               values_to = 'price') %>%
  head(n = 5)


diamonds3 <- readRDS("cm_data/intro/diamonds3.rds")

diamonds3 %>% 
  pivot_wider(names_from = 'dimension',
              values_from = 'measurement') %>% 
  head(n = 5)

diamonds4 <- readRDS("cm_data/intro/diamonds4.rds")

diamonds4 %>% separate(col = 'dim',
                       into = c('x', 'y', 'z'),
                       sep='/',
                       convert = T) %>% 
  head(n=5)

diamonds5 <- readRDS("cm_data/intro/diamonds5.rds")

diamonds5 %>% unite(clarity, clarity_prefix, clarity_suffix, sep = '') %>% 
  head(n=5)



