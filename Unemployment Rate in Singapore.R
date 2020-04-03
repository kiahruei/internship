install.packages("tidyverse")

library(tidyverse)


unemploy <- read_csv("unn rate.csv")

pic <- ggplot(data=unemploy, aes(x = factor(year), y = unemployment_rate)) + 
  geom_point(colour="tomato") + 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5)) +
  xlab("Year") +
  ylab("Unemployment Rate")

pic <- pic + ggtitle ("Unemployment Rate Singapore")

plot(pic)