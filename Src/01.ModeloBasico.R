###################################
## librerias

library(tidyverse)
library(survival)
library(readxl)


#### Cargar datos
Arkansas <- read_excel("Input/Arkansas.xlsx")
Arkansas$ASPC = as.numeric(Arkansas$ASPC)
Arkansas$BMPC = as.numeric(Arkansas$BMPC)


modelo = survreg(Surv(OS_Time, OS_Censor)~B2M+ALB+SEX+ASPC+BMPC, data=Arkansas, dist = "weibull")
summary(modelo)

save(modelo, file="Output/modelo1.RData")
