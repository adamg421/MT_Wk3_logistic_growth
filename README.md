# Assignment questions

## Question 1

### Introduction
This study investigates the logistic growth of a simulated experimental population of _Escherichia coli_ to estimate the initial population size (N0), intrinsic growth rate (r), and the carrying capacity (K). The data analysed is "experiment.csv", a dataset downloaded from the Open Science Framework's website (https://osf.io). This dataset includes 84 observations two variables: the time (t) and population size (N).

### Analysis
The analysis was conducted in 3 steps with the code available in the repo and linked below.

1. Data visualisation ([plot_data.R](https://github.com/adamg421/MT_Wk3_logistic_growth/blob/main/plot_data.R))
   
   First I plotted the data using the 'ggplot2' package with time on the x-axis and population size on the y-axis.
   
   ![file_show](https://github.com/user-attachments/assets/fcfe6e62-651f-46d3-a93e-c1a8590c371f)

   Then, a log transform of the population size (N) was used to linearise the growth curve, allowing the use of a linear model. This semi-log plot shows the time on the x-axis and the log-transformed population size (log10(N)) on the y-axis. The plot shows initial exponential growth, which slows and reaches a constant size (equilibrium)

   ![file_show-2](https://github.com/user-attachments/assets/dfdaa484-e6d6-4664-82c9-d9e3fa50305f)

2. Fitting the linear model ([fit_linear_model.R](https://github.com/adamg421/MT_Wk3_logistic_growth/blob/main/fit_linear_model.R))
   
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


![Screenshot 2024-12-12 at 00 01 56](https://github.com/user-attachments/assets/23bca29e-020d-4915-ac64-f8e246186241)

Therefore k = $6 \times 10^{10}$

### Results

We have estimated the following:

N0 = 986
r = 0.0100086
K = $6 \times 10^{10}$

([plot_data_and_model.R](https://github.com/adamg421/MT_Wk3_logistic_growth/blob/main/plot_data_and_model.R))

I confirmed these estimates by plotting the original data and overlaying the logistic curve using these parameters. The curve fitted the data well, validating the accuracy of the estimates.


![e24f9e97-5eaa-4bbb-b197-b98c58e95910](https://github.com/user-attachments/assets/edc2132b-08af-42d6-a245-596eec622b82)

## Question 2

To calculate the population size at t = 4980 assuming exponential growth, we can use the equation for exponential growth:

$$
N(t) = N_0 e^{rt}
$$

Filling in our values gives

$$
N(4980) = 986 \times e^{0.0100086 \times 4980} = 4.368598 \times 10^{24}
$$

Alternatively, this is the logistic growth equation which relates the population size at time t to the initial size of the population (N0), the growth rate (r) and the carrying capacity (K).

```math
\begin{equation}
N(t) = \frac{K N_0 e^{rt}}{K-N_0+N_0 e^{rt}}
\end{equation}
```

Completing the calculation with our values gives

```math
\begin{equation}
N(4980) = \frac{6 \times 10^{10} \cdot 986 \cdot e^{0.0100086 \cdot 4980}}{6 \times 10^{10}-986+986 e^{0.0100086 \cdot 4980}} = 6 \times 10^{10}
\end{equation}
```

This shows that the population has reached the carrying capacity (K) of $6 \times 10^{10}$, which is many times smaller than the population size estimated when assuming exponential growth. This is because the logistic model includes a maximum carrying capacity, for example due to biologically limiting factors like a limited respiratory resource.

## Question 3
The r code is [exponential_vs_logistic.R](https://github.com/adamg421/MT_Wk3_logistic_growth/blob/main/exponential_vs_logistic.R)

This is a semi-log figure with Time (t) on the x-axis and the log of the population size (N) on the y-axis which compares the exponential growth function in blue to the logisitic growth function in red. 


![6d808b55-9b0e-4eea-8d77-396176521f11](https://github.com/user-attachments/assets/2c16b62e-db7c-4fab-9201-cb9d6bfc1027)
