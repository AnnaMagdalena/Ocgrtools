% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pplot.R
\name{pplot}
\alias{pplot}
\title{pplot}
\usage{
pplot(df, property, depth)
}
\arguments{
\item{df}{dataframe}

\item{property}{numeric vector}

\item{depth}{numeric vector}
}
\value{
plot
}
\description{
Create depth profiles of ocean properties.Depth profiles are plotted with depth along
the vertical axis (y-axis) where seasurface represents 0m and is plotted at the top
axis and deepest waters (eg. 2000m) are plotted at the bottom of y-axis. The range on
the horizontal axis (x-axis) represents the range in the ocean property being plotted.
}
\examples{
#' pplot(data,"temp","depth")
}

