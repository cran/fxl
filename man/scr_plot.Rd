% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fxl.R
\name{scr_plot}
\alias{scr_plot}
\title{scrplot}
\usage{
scr_plot(
  data,
  aesthetics = NULL,
  mai = c(0.375, 0.375, 0.25, 0.25),
  omi = c(0.25, 0.25, 0.25, 0.25),
  xaxs = "i",
  yaxs = "i",
  ncol = 1,
  family = "sans",
  bty = "l",
  layout = NA,
  layout_h = NA,
  layout_v = NA,
  semi_color_major_y = "blue",
  semi_color_midpoint_y = "blue",
  semi_color_minor_y = "lightgray",
  semi_color_major_x = "lightgray",
  semilog = FALSE
)
}
\arguments{
\item{data}{submitted data (not opinionated on naming)}

\item{aesthetics}{references for data in frame}

\item{mai}{margins in inches}

\item{omi}{outer margins in inches}

\item{xaxs}{x axis formatting, relative to hanging space}

\item{yaxs}{y axis formatting, relative to hanging space}

\item{ncol}{TODO}

\item{family}{font family}

\item{bty}{TODO}

\item{layout}{TODO}

\item{layout_h}{TODO}

\item{layout_v}{TODO}

\item{semi_color_major_y}{TODO}

\item{semi_color_midpoint_y}{TODO}

\item{semi_color_minor_y}{TODO}

\item{semi_color_major_x}{TODO}

\item{semilog}{determine if this is a semilog type of plot}
}
\value{
class of 'fxl' that contains necessary plotting elements
}
\description{
Core object for establishing fxl object and layers
}
\author{
Shawn Gilroy <sgilroy1@lsu.edu>
}