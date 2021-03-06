% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rank_utils.R
\name{mvglmmRank_model}
\alias{mvglmmRank_model}
\title{Build an mvglmmRank model}
\usage{
mvglmmRank_model(
  game_data,
  method = "NB.mov",
  first.order = TRUE,
  verbose = FALSE
)
}
\arguments{
\item{game_data}{a \code{game_data} tibble.}

\item{method}{the \code{mvglmmRank} method to use - default is "NB.mov"}

\item{first.order}{the \code{mvglmmRank} first-order correction flag -
default is \code{TRUE}}

\item{verbose}{print a lot of stuff whilst iterating - default is \code{FALSE}}
}
\value{
an mvglmmRank model object
}
\description{
Builds an mvglmmRank model
}
