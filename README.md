# Assignment questions

## Question 1

### Introduction
This study investigates the logistic growth of a simulated experimental population of _Escherichia coli_ to estimate the initial population size (N0), intrinsic growth rate (r), and the carrying capacity (K). The data analysed is "experiment.csv", a dataset downloaded from the Open Science Framework's website (https://osf.io). This dataset includes 84 observations two variables: the time (t) and population size (N).

### Analysis
The analysis was conducted in 3 steps with the code available in the repo and linked below.

1. Data visualisation (Link to script)
   
   First I plotted the data using the 'ggplot2' package with time on the x-axis and population size on the y-axis.
   
   ![file_show](https://github.com/user-attachments/assets/fcfe6e62-651f-46d3-a93e-c1a8590c371f)

   Then, a log transform of the population size (N) was used to linearise the growth curve, allowing the use of a linear model. This semi-log plot shows the time on the x-axis and the log-transformed population size (log10(N)) on the y-axis. The plot shows initial exponential growth, which slows and reaches a constant size (equilibrium)

   ![file_show-2](https://github.com/user-attachments/assets/dfdaa484-e6d6-4664-82c9-d9e3fa50305f)

2. Fitting the linear model (link to script)
   
   To determine N0 and r, we filter the data to include only the expontial growth period where K is much greater than N0 and t is small. This is visually estimated as t<1500. The function for this exponential growth period is as follows:

$$ 
\ln(N) = \ln(N_0) + rt 
$$

  The output of the linear model function lm() is shown below. The estimate for the intercept gives the natural log of the initial population size: 6.8941709. Thus the N0 is e^6.8941709 = 986 (which is corroberated by the value of 879 given at t = 0 in the original dataset). The growth rate (r) is given by the estimate for t: 0.0100086. 

  ![Screenshot 2024-12-11 at 22 48 04](https://github.com/user-attachments/assets/c680d779-3356-4b44-a497-cd5aad636523)

   When t is large (approximated to t>2500) and the population size is constant, the estimate for the intercept gives the carrying capacity (K). This is demostrated by the following equation:

   $$
N(t) = K + 0 \times t
$$

Therefore k = $6 \times 10^{10}$

### Results

We have estimated the following:

N0 = 986
r = 0.0100086
K = $6 \times 10^{10}$

(link to r code)

I confirmed these estimates by plotting the original data and overlaying the logistic curve using these parameters. The curve fitted the data well, validating the accuracy of the estimates.


![e24f9e97-5eaa-4bbb-b197-b98c58e95910](https://github.com/user-attachments/assets/edc2132b-08af-42d6-a245-596eec622b82)


