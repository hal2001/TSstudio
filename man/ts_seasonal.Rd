% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ts_seasonal.R
\name{ts_seasonal}
\alias{ts_seasonal}
\title{Seasonality Visualization of Time Series Object}
\usage{
ts_seasonal(ts.obj, type = "normal", title = NULL, Ygrid = TRUE,
  Xgrid = TRUE, last = NULL, palette = "Set1",
  palette_normal = "Spectral")
}
\arguments{
\item{ts.obj}{Input object, either a univariate time series object of a class "ts", "zoo", "xts", or a data frame object of a class
"data.frame", "tbl", "data.table" as long as there is at least one "Date"/"POSIXt" and a "numeric" objects 
(if there are more then one, by defualt will use the first of each). 
Currently support only daily, weekly, monthly, and quarterly frequencies}

\item{type}{The type of the seasonal plot - 
"normal" to split the series by full cycle units, or
"cycle" to split by cycle units (applicable only for monthly and quarterly data), or
"box" for box-plot by cycle units, or
"all" for all the three plots together}

\item{title}{Plot title - Character object}

\item{Ygrid}{Logic,show the Y axis grid if set to TRUE (default)}

\item{Xgrid}{Logic,show the X axis grid if set to TRUE (defualt)}

\item{last}{Subset the data to the last number of observations}

\item{palette}{A character, the color palette to be used when the "cycle" or "box" plot are being selected 
(by setting the type to "cycle", "box", or "all"). 
All the palettes in the RColorBrewer and viridis packages are available to be use, the
default option is "Set1" from the RColorBrewer package}

\item{palette_normal}{A character, the color palette to be used when the "normal" plot is being selected 
(by setting the type to "normal" or "all"). 
All the palettes in the RColorBrewer and viridis packages are available to be used, the
default palette is "Spectral" from the RColorBrewer package}
}
\description{
Visualize time series object by it periodicity, currently support time series with daily, monthly and quarterly frequency
}
\examples{
data(USgas)
ts_seasonal(USgas)

# Seasonal box plot
ts_seasonal(USgas, type = "box") 

# Plot all the types 
ts_seasonal(USgas, type = "all")
}
