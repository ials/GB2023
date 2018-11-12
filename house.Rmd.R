# load libraries
library(sf)
library(ggplot2)
library(dplyr)

# create polygons
house1.building <- st_polygon(list(rbind(c(1, 1), c(2, 1), c(2, 0), c(1, 0), c(1, 1))))

h1.b = st_sfc(house1.building)

h1.bld = st_sf(pid="h1b", h1.b)

house1.roof <- st_polygon(list(rbind(c(1, 1), c(1.5, 2), c(2, 1), c(1, 1))))

h1.r = st_sfc(house1.roof)

h1.rf = st_sf(pid="h1r", h1.r)

# create points
p_matrix = matrix(c(0.5, 1.0, 1.5, 1.5, 1.5, 0.5, 2.0, 1.0, 0.0, 0.0,2.5, 1, 2.5, 2,0.5, 1.5, 
                    1.8, 0.8, 1.25, 1.25), byrow=TRUE, ncol = 2)
p_multi = st_multipoint(x = p_matrix)
p = st_cast(st_sfc(p_multi), "POINT") 
pp = st_sf(id=51:60, p)

# plot
plot(st_geometry(pp), pch=3, col="red", axes=TRUE)
plot(st_geometry(h1.bld), add = TRUE, border = "blue")
plot(st_geometry(h1.rf), add = TRUE, border = "green")
text(st_coordinates(pp), labels = pp$id)
