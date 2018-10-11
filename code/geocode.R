mis_direcciones <- c("Berliner Platz, Giessen",  
                     "Brandenburger Tor, Berlin")
source("code/nominatim.R")
suppressPackageStartupMessages(library(dplyr))
d <- suppressWarnings(lapply(mis_direcciones, function(address) {
  t <- Sys.time()
  api_output <- nominatim_osm(address)
  t <- difftime(Sys.time(), t, 'secs')
  return(data.frame(address = address, api_output, elapsed_time = t))
}) %>%
dplyr::bind_rows() %>% data.frame())
print(d)

