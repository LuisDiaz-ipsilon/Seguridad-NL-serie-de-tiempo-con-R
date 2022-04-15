library(tidyverse)
library(lubridate)


install.packages('ggplot2')
file.choose()
raw_data <- read.csv("C:\\Users\\Win\\Documents\\FCFM\\01 Prog Lineal\\PIA\\R TS\\TS SEGURIDAD NL\\Delitos_Poblacion_NL.csv")

head(raw_data)

#Objeto tabla con los delitos electorales disstribuidos por cuatrimestre desde el 2015
del_elec  <- raw_data %>% 
  select(Electorales)


#modelo TS
install.packages('forecast')
library(forecast)

del_elec.ts = ts(del_elec, start=2015, frequency = 4)
  
prediccion <- forecast(del_elec.ts) 

#serie de tiempo delitos de fraude
plot(del_elec.ts)
#serie de tiempo delitos de fraude con preduccion
plot(prediccion)

