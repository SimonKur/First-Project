cs <- read.csv('/Users/simonkurzewski/Desktop/Things/SQL folder/First Project/1_customer_segmentation.csv')

library(tidyverse)
library(dplyr)
library(ggplot2)

cs %>% 
  mutate(
    "Revenue" = round(total_ltv / sum(total_ltv) * 100, 1),
    "Amount of customers" = round(customer_count / sum(customer_count) * 100,1)
    ) %>% 
  pivot_longer(
    cols = c("Revenue", "Amount of customers"),
    names_to = "metric",
    values_to = "values"
  ) %>% 
  ggplot(aes(customer_segment, values, fill = metric)) + 
  geom_col(position = "dodge") + 
  geom_label(aes(label = paste0(values, "%")), 
             position = position_dodge(0.9)) + 
  labs(x = "Customer Segement",
       y = "",
       title = "Customer Segmentation: Total LTV Distribution") +
  scale_fill_manual(values = c("Revenue" = "grey70", 
                               "Amount of customers" = "steelblue4")) + 
  theme(axis.text.y = element_blank(),
        panel.background = element_blank(),
        plot.title = element_text(hjust = 0.5)) 



