ra <- read.csv('/Users/simonkurzewski/Desktop/Things/SQL folder/First Project/3_retention_analysis.csv')

library(tidyverse)
library(dplyr)
library(ggplot2)

ra %>%
  mutate(per = status_percentage * 100) %>%
  ggplot(aes(as.factor(cohort_year), per, fill = customer_status)) +
  geom_col(position = "stack") +
  scale_fill_manual(values = c("Active" = "steelblue4", "Churned" = "grey70"),
                    name = "Customer Status") +
  geom_label(aes(label = paste0(per, "%")), 
             position = position_stack(vjust = 0.5)) +
  labs(
    x = "Cohort Year",
    y = "",
    title = "Total Customer Retention and Churn by Cohort Year"
  ) +
  theme(axis.text.y = element_blank(),
        panel.background = element_blank(),
        plot.title = element_text(hjust = 0.5))

