% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict.R
\name{predict.bayz}
\alias{predict.bayz}
\title{Predict new response variables from the bayz object}
\usage{
\method{predict}{bayz}(object, ...)
}
\arguments{
\item{object}{A formula describing the model.}

\item{...}{Additional parameters passed onto the Model function.}
}
\value{
fitted
}
\description{
Predict new data points from a fitted bayz model, if no new data is given returns the fitted response variables. If new data is given, it gives predicted response variables.
}
