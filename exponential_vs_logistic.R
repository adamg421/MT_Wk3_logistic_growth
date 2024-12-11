#Script to plot data and model

N0 <- exp(6.778785) #

r <- 0.0100086 #

K <- 6e+10 #


exponential_fun <- function(t){
  
  N <- N0*exp(r*t)
  
  return(N)
  
}

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}


ggplot(aes(t,log(N)), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red", size = 1.5) +
  
  geom_function(fun=exponential_fun, colour="blue", size = 1.5) +
  
  xlim(0, 4980) +
  
  scale_y_continuous(trans='log10')


  