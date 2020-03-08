# demo-01.R
library(liminal)

data(pollen, package = "animation")

limn_tour(
  pollen, 
  cols = dplyr::everything(), # which columns to form X,
  tour_path = tourr::grand_tour() # how to generate the sequence
)
