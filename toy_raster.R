library(ncdf4)
library(raster)
library(rasterVis)
library(maptools)
library(maps)



ncfname <- "./notebooks/test-netCDF-file.nc"
# read the netCDF file as a raster layer
tmp <- raster(ncfname)
tmp


#print(tmpin)

# map the data
#mapTheme <- rasterTheme(region = rev(brewer.pal(10, "RdBu")))
#cutpts <- c(-2.5, -2.0, -1.5, -1, -0.5, 0, 0.5, 1.0, 1.5, 2.0, 2.5)
#plt <- levelplot(tm, margin = F, at=cutpts, cuts=11, pretty=TRUE, par.settings = mapTheme,
#                 main="A raster layer")
#plt
