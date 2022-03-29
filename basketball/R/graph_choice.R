#' Creates a plot of points, for, against, and difference over time for a team
#' 
#' Takes a team name and tibble of college basketball games played and returns
#' either a plot of their points for and against, or a plot of their points diffences 
#' over time depending on the choice argument. The choice argument must be "for_against"
#' or "difference". This function was created to make the shiny app work the way it was
#' desired to.
#' 
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
#' graph_choice("difference","Gonzaga", cbb)

graph_choice <- function(choice, team_name, df){
  if(choice == "for_against"){
    return(points_graph(team_name, df))
  }
  if(choice == "difference"){
    return(diff_graph(team_name, df))
  }
}