# Assignment questions

## Question 1

### Introduction
This study investigates the logistic growth of a simulated experimental population of _Escherichia coli_ to estimate the initial population size (N0), intrinsic growth rate (r), and the carrying capacity (K). The data analysed is "experiment.csv", a dataset downloaded from the Open Science Framework's website (https://osf.io). This dataset includes 84 observations two variables: the time (t) and population size (N).

### Analysis
The analysis was conducted in 3 steps with the code available in the repo and linked below.

1. Data visualisation
   First I plotted the data using the 'ggplot2' package with time on the x-axis and population size on the y-axis.
   
   ![file_show](https://github.com/user-attachments/assets/fcfe6e62-651f-46d3-a93e-c1a8590c371f)

   Then, a log transform of the population size (N) was used to linearise the growth curve, allowing the use of a linear model. This semi-log plot shows the time on the x-axis and the log-transformed population size (log(N)) on the y-axis. 
