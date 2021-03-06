% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/win_pct.R
\name{win_pct}
\alias{win_pct}
\title{Returns winning percentage, wins and losses for a given college basketball team}
\usage{
win_pct(team_name, df)
}
\arguments{
\item{team_name}{A description of the input parameter \code{team_name}}

\item{df}{the data frame containing college basketabll games \code{df}}
}
\value{
Returns the winning percentage of the chosen team
}
\description{
Input a given team and the data frame of games to see a winning percentage,
and number of wins and losses
}
\examples{
suu_wpc <- win_pct("Southern Utah", cbb)
}
\keyword{keywords}
