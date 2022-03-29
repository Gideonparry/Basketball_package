#' Runs the shiny app
#' 
#' Runs the shiny app in the basketball package
#'
#' @return runs the shiny app for the basketball package
#'
#' 
#'
#' @export
#' 
#' @examples
#' /dontrun{run_app()}

run_app <- function(){
  appdir <- system.file("shiny", package = "basketball")
  shiny::runApp(appdir)
}