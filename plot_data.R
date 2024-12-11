#Script to plot the logistic growth data

growth_data <- read.csv("experiment.csv")

install.packages("ggplot2")
library(ggplot2)

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("Time (t)") +
  
  ylab("Population Size (N)") +
  
  theme_bw()

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("Time (t)") +
  
  ylab("Log Population Size (log(N))") +
  
  scale_y_continuous(trans='log10')


ggplot(aes(t,N_log), data = data_subset1) +
  
  geom_point() +
  
  xlab("Time (t)") +
  
  ylab("Log Population Size (log(N))") 
