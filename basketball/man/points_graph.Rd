% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/points_graph.R
\name{points_graph}
\alias{points_graph}
\title{Creates a plot of points for and against a team over time for a team}
\usage{
points_graph(team_name, df)
}
\arguments{
\item{team_name}{The name of a team \code{inputParameter1}}

\item{df}{data fram containg college basketball games played \code{inputParameter2}}
}
\value{
Graph of points over time
}
\description{
Takes a team name and tibble of college basketball games played and returns
a plot with dates on the y axis and points on the x axis with 2 seperate lines.
A blue line representing points for and  a red line representing poins against.
Requires ggplot2 and reshape2 packages
}
\examples{
points_graph("Gonzaga", cbb)
}
\keyword{keywords}
