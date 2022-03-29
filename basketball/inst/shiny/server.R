server <- function(input, output){
  
  
  
  output$rb <- renderPlot({
    graph_choice(input$rb, input$xcol, cbb)
  })
  output$winbar <- renderPlot({
    win_graph(input$xcol, cbb)
  })
  output$winpct <- renderTable({win_pct(input$xcol,cbb)})
  output$games <- renderDataTable({team_games(input$xcol, cbb)})
  output$diffHist <- renderPlot({points_diff_hist(input$xcol, cbb)})
  output$pointBar <- renderPlot({points_bar(input$xcol,cbb)})
}
