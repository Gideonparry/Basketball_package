library(basketball)
library(shiny)
library(reshape2)
library(tidyverse)
library(DT)
library(data.table)

download.file("http://kenpom.com/cbbga22.txt","cbb.txt")

cbb = read.fwf("cbb.txt", widths = c(10,24,4,22,5,3,20))

cbb = tibble(cbb)



cbb = kenpom_reformat(cbb)

teams = c()
for (i in 1:length(cbb$Away_team)){
  if (!(cbb$Away_team[i] %in% teams)){
    teams = append(teams, cbb$Away_team[i])
  }
}

source("ui")
source("server")


shinyApp(server = server, ui = ui)
