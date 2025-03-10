% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/outputConnectivity.R
\name{plot.estMigConnectivity}
\alias{plot.estMigConnectivity}
\title{Basic plot function for estMigConnectivity objects}
\usage{
\method{plot}{estMigConnectivity}(
  x,
  plot.which = ifelse(inherits(x, "estPsi"), "psi", ifelse(inherits(x, "estMC"), "MC",
    ifelse(inherits(x, "estGamma"), "gamma", "rM"))),
  point = c("mean", "median", "point"),
  range = c("simpleCI", "bcCI", "se"),
  xlab = NULL,
  ylab = plot.which,
  originNames = NULL,
  targetNames = NULL,
  ageNames = NULL,
  col = NULL,
  pch = NULL,
  las = 1,
  gap = 0,
  sfrac = ifelse(range == "se", 0.01, 0),
  legend = FALSE,
  map = FALSE,
  ...
)
}
\arguments{
\item{x}{an estMigConnectivity object (output of estTransition, estStrength,
estMC, or estMantel)}

\item{plot.which}{which parameter (psi, MC, rM, or r) to graph. Defaults to
psi for estMC objects, to rM (Mantel correlation) otherwise}

\item{point}{points on graph can represent mean, median, or point estimates
(not considering error). Defaults to mean, the standard estimate from
resampling}

\item{range}{lines / error bars drawn around points can represent simple
quantile-based confidence intervals (simpleCI), bias-corrected quantile-
based confidence intervals (bcCI), or +- standard error (se). Defaults to
simpleCI}

\item{xlab}{label for the x-axis. Defaults to "Origin" for psi, otherwise ""}

\item{ylab}{label for the y-axis. Defaults to the parameter being plotted}

\item{originNames}{names of the origin sites (for plotting psi). If left
NULL, the function attempts to get these from the estimate}

\item{targetNames}{names of the target sites (for plotting psi or r). If left
NULL, the function attempts to get these from the estimate}

\item{ageNames}{names of the age classes (for plotting r with more than one
age). If left NULL, the function uses 1:[number of ages]}

\item{col}{colors to use for labeling transition probabilities for
different target sites. If left NULL, defaults to 1:[number of target sites]}

\item{pch}{symbols to use for labeling transition probabilities for
different target sites. If left NULL, defaults to 21:25, then
0:([number of target sites]-5)}

\item{las}{style of axis labels (0-3). We set the default at 1 (always
horizontal) here, but if you prefer your labels parallel to the axis, set
at 0}

\item{gap}{space left between the center of the error bar and the lines
marking the error bar in units of the height (width) of the letter "O".
Defaults to 0}

\item{sfrac}{width of "crossbar" at the end of error bar as a fraction of the
x plotting region. Defaults to 0, unless range is set to "se", in which
case it defaults to 0.01}

\item{legend}{leave as FALSE to not print a legend. Otherwise the position
of the legend (for psi or r (multi-age) only; one of "bottomright",
"bottom", "bottomleft", "left", "topleft", "top", "topright", "right", or
"center")}

\item{map}{placeholder for eventually allowing users to plot psi estimates
on a map}

\item{...}{Additional parameters passed to \code{\link{plotCI}}}
}
\value{
No return value, called to generate plot.
}
\description{
Basic plot function for estMigConnectivity objects
}
\seealso{
\code{\link{estMC}}, \code{\link{estMantel}}
}
