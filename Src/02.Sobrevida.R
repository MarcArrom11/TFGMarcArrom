######################
library(survival)
library(tidyverse)
library(readxl)

Arkansas <- read_excel("Input/Arkansas.xlsx", 
                       col_types = c("numeric", "numeric", "text", 
                                     "numeric", "text", "text", "text", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric", "numeric", "numeric", 
                                     "numeric"))



modelo1 <- coxph(Surv(OS_Time, OS_Censor)~AGE+SEX+PROT+B2M, data=Arkansas)
summary(modelo1)

### Iteraciones
modelo1$iter

### Varianzas
modelo1$var
sqrt(modelo1$var)
