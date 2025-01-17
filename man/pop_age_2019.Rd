% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-pop_age_2019.R
\docType{data}
\name{pop_age_2019}
\alias{pop_age_2019}
\title{Population Age 2019 Data.}
\format{
A data frame with 2820 rows and 4 variables.
\describe{
\item{state}{State as 2 letter abbreviation.}
\item{state_name}{State name.}
\item{age}{Age cohort for population.}
\item{population}{Population of age cohort.}
\item{state_total_population}{total estimated state population in 2019}
}
}
\source{
\href{https://wonder.cdc.gov/Bridged-Race-v2019.HTML}{Centers for Disease Control and Prevention}
}
\usage{
pop_age_2019
}
\description{
State level data on population by age.
}
\examples{
library(dplyr)

# List age population for each state with percent of total
pop_age_2019 \%>\%
  group_by(state_name, age) \%>\%
  mutate(percent = population / state_total_population * 100) \%>\%
  select(state_name, age, population, percent)

pop_age_2019 \%>\%
  select(state_name, state_total_population) \%>\%
  distinct() \%>\%
  arrange(desc(state_total_population))
}
\keyword{datasets}
