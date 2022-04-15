library(tidyverse)
library(lubridate)
library(forecast)

#traer CSV
file.choose()
raw_data <- read.csv("C:\\Users\\Win\\Documents\\FCFM\\01 Prog Lineal\\PIA\\R TS\\TS SEGURIDAD NL\\Delitos_Poblacion_NL.csv")

head(raw_data)

#Creacion de variable tabla con la canditdad de fraude por trimestre
delitos_fraude <- raw_data %>% 
  select(Fraude) 

#crear el objeto ts
delitos_fraude.ts = ts(delitos_fraude, start=2015, frequency = 4)
  
#Modelo para ts
install.packages('forecast')
library(forecast)

prediccion_fraude <- forecast(delitos_fraude.ts) 

#serie de tiempo delitos de fraude
plot(delitos_fraude.ts)
#serie de tiempo delitos de fraude con preduccion
plot(prediccion_fraude)


