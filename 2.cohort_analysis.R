ca <- read.csv('/Users/simonkurzewski/Desktop/Things/SQL folder/First Project/2_cohort_analysis.csv')

library(tidyverse)
library(dplyr)
library(ggplot2)


ca %>% 
  ggplot(aes(as.factor(cohort_year), customer_revenue, group = 1)) + 
  geom_col(aes(fill = "Customer Revenue"), alpha = 0.5) + 
  geom_smooth(aes(fill = "Trend Line"), method = "loess", 
              formula = y ~ x, se = F, span = 3, lty = 5) + 
  labs(x = "Cohort Year",
       y = "Customer Revenue ($)",
       title = "Customer Revenue by First Purchase Year") +
  scale_fill_manual(name = "Legend", 
                    values = c(
                      "Customer Revenue" = "dodgerblue2", 
                      "Trend Line" = "grey50")) +
  theme(panel.background = element_blank(),
        plot.title = element_text(hjust = 0.5)) 




