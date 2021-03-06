% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/noaa_stations.R
\name{noaa.stations}
\alias{noaa.stations}
\title{Print active NOAA stations}
\usage{
noaa.stations(state = "all")
}
\arguments{
\item{state}{limits printed records to a state or states of interest. Default is to
show 'all' stations.}
}
\value{
A \code{data.frame} with station names, states/territories, and station 
numbers. If a 'state' argument is provided that is not found on the NOAA site, an 
error message is displayed. If a vector of states is provided, some of which are 
invalid, a dataframe will be produced for the valid criteria and invalid criteria 
will be noted.
}
\description{
\code{noaa.stations} returns active NOAA CO-OPS tide stations.
}
\details{
This function returns a dataframe showing all active stations in 
the NOAA CO-OPS network. This can be used to identify stations for use 
in \code{noaa}.
}
\examples{
\dontrun{
# examples require internet connection
a <- noaa.stations() # all active stations
b <- noaa.stations(state = "MA") 
c <- noaa.stations(state = c("RI", "CT"))
d <- noaa.stations(state = c("OR", "RI", "MA", "Germany", "Pluto")) # two erroneous entries 
highlow <- noaa(station = d[1,1], begindate = 20130101)
}
}
\seealso{
NOAA station listing: \url{https://www.tidesandcurrents.noaa.gov/stations.html?type=Water+Levels}
Historic stations which can also be accessed by \code{noaa}: 
\url{http://co-ops.nos.noaa.gov/stations.html}
}
