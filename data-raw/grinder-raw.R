library(magrittr)
library(dplyr)
library(googlesheets)

sheet <- gs_url("https://docs.google.com/spreadsheets/d/11finApW8RppQsrBaVBtALTFzEhfekBU5kRYnFz52rtY/pubhtml")
data <- gs_read(sheet) %>%
        as.data.frame %>%
        subset(select=1:2) %>%
        mutate(Date=as.Date(Date, format="%d.%m.%y"))
colnames(data) <- c("date", "cups")

grinder <- data

devtools::use_data(grinder)
