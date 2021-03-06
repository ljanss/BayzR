% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HPDbayz.R
\name{HPDbayz}
\alias{HPDbayz}
\title{HPD intervals accounting for boundaries on parameter space}
\usage{
HPDbayz(x, prob = 0.95, bound = "none")
}
\arguments{
\item{x}{samples from a (posterior) distribution; if the input is a matrix or dataframe with multiple columns
an HPD interval is computed for every column}

\item{prob}{the target probability (0,1) to collect in the HPD interval; as the underlying density estimate
is discrete, HPDbayz will obtain the interval that includes just more than the given 'prob'}

\item{bound}{a single character string or vector of character strings giving the types of bounds on the parameters,
which must be either "none", "var" (parameter is restricted to (0,INF)), or "prob" (parameter is
restricted to (0,1)). When x has multiple columns, a single character string can be given as bound and
that bound is applied to all columns, or a vector of character strings can be given to indicate the
bound to be applied to each colunm.}
}
\value{
A matrix with 2 columns for the lower and upper values of the HPD interval, and a row for every input column.
}
\description{
HPD intervals accounting for boundaries on parameter space
}
