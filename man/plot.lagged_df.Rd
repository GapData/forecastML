% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lagged_df.R
\name{plot.lagged_df}
\alias{plot.lagged_df}
\title{Plot datasets with lagged predictors}
\usage{
\method{plot}{lagged_df}(object)
}
\arguments{
\item{object}{An object of class 'lagged_df' from create_lagged_df().}
}
\value{
A single plot if 'lookback' was specified in create_lagged_df();
a list of plots, one per predictor, if 'lookback_control' was specified.
}
\description{
Plot datasets with lagged predictors to view your direct forecasting setup across horizons.
}
\examples{
\donttest{
# Sampled Seatbelts data from the R package datasets.
data("data_seatbelts", package = "forecastML")
#------------------------------------------------------------------------------
# Example 1 - Training data for 12 horizon-specific models w/ common lags per predictor.
horizons <- 1:12
lookback <- 1:15

data_train <- create_lagged_df(data_seatbelts, type = "train", outcome_cols = 1,
                               lookback = lookback, horizon = horizons)
plot(data_train)
#------------------------------------------------------------------------------
# Example 2 - Training data for one 3-month horizon model w/ unique lags per predictor.
horizons <- 3
lookback <- list(c(3, 6, 9, 12), c(4:12), c(6:15), c(8))

data_train <- create_lagged_df(data_seatbelts, type = "train", outcome_cols = 1,
                               lookback_control = lookback, horizon = horizons)
plot(data_train)
#------------------------------------------------------------------------------
}
}
