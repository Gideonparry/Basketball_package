ui <- fluidPage(
  teams = c(),
  for (i in 1:length(cbb$Away_team)){
    if (!(cbb$Away_team[i] %in% teams)){
      teams = append(teams, cbb$Away_team[i])
    }
  },
  selectInput('xcol', 'Team', teams), 
  radioButtons("rb", "Choose one:",
               choiceNames = list(
                 
                 "Points scored and allowed",
                 "Points Difference"
               ),
               choiceValues = list(
                 "for_against", "difference"
               )),
  plotOutput("rb"),
  plotOutput("winbar"),
  tableOutput('winpct'),
  dataTableOutput('games'),
  plotOutput("diffHist"),
  plotOutput("pointBar")
)