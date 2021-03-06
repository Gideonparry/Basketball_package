#' Creates a plot of points for and against a team over time for a team
#' 
#' Takes a team name and tibble of college basketball games played and returns
#' a plot with dates on the y axis and points on the x axis with 2 seperate lines.
#' A blue line representing points for and  a red line representing poins against.
#' Requires ggplot2 and reshape2 packages
#' 
#' @param team_name The name of a team \code{inputParameter1}
#' @param df data fram containg college basketball games played \code{inputParameter2}
#'
#' @return Graph of points over time 
#'
#' @keywords keywords
#'
#' @export
#' 
#' @examples
#' points_graph("Gonzaga", cbb)


points_graph <- function(team_name, df){
  games <- df %>%
    filter(Home_team == team_name | Away_team == team_name)
  games <- games %>%
    mutate(score_diff = ifelse(Away_team == team_name, -score_diff, score_diff))
  games <- games %>%
    mutate(points_for = ifelse(Away_team == team_name, Away_score, Home_score))
  games <- games %>%
    mutate(points_against = ifelse(Away_team == team_name, Home_score, Away_score))
  games <- arrange(games, Date)
  
  games <- games %>%
    select(Date | points_for | points_against)
  
  
  games <- reshape2::melt(games, id = "Date")
  
  cols <- c("blue", "red")
  title <- paste(team_name,"points over time")
  
  return(
    ggplot(games, aes(x = Date, y = value, color = variable)) +
      geom_line() +
      scale_color_manual(values = cols)+
      geom_point()
    + labs(title = title)
  )
}
