# Taken from
# https://giscience.github.io/openrouteservice-r/articles/openrouteservice.html

# Install Libraries
#install.packages("shiny", dependencies=TRUE)
#install.packages("rmarkdown", dependencies=TRUE)
#install.packages("devtools", dependencies=TRUE)
#devtools::install_github("GIScience/openrouteservice-r")

# Setting up API key
library(openrouteservice)
ors_api_key("5b3ce3597851110001cf6248d91cab67f57848628f15281c94f6a1e2")

# Directions
coordinates <- list(c(13.37, 52.51), c(12.34, 51.2))
#  13.3777025 52.516277
#   8.34234, 48.23424
x <- ors_directions(coordinates, format="geojson")


library(leaflet)

leaflet() %>%
  addTiles() %>%
  addGeoJSON(x, fill=FALSE) %>%
  fitBBox(x$bbox)

df <- data.frame(lng = c(13.37, 12.34), lat = c(52.51, 51.2))

coordinates <- t(df)

x <- ors_directions(coordinates, profile="cycling-mountain", format="geojson")

leaflet() %>%
  addTiles() %>%
  addGeoJSON(x, fill=FALSE) %>%
  fitBBox(x$bbox)

library(sp)
library(ggplot2)
library(RColorBrewer)

x <- ors_directions(coordinates, profile="cycling-mountain", geometry_format="geojson",
                    elevation = TRUE, extra_info = "steepness")

## create data.frame
coords <- x$routes[[1]]$geometry$coordinates
colnames(coords) <- c("Longitude", "Latitude", "Height")

longlat <- coords[,c("Longitude", "Latitude")]
height <- coords[, "Height"]

segments <- cumsum(spDists(longlat, longlat=TRUE, segments=TRUE))

steepness <- x$routes[[1]]$extra$steepness$values
steepness <- rep(steepness[,3], steepness[,2]-steepness[,1])
steepness <- factor(steepness, -5:5)

n <- length(segments)

df <- data.frame(x1 = c(0, segments[-n]),
                 x2 = segments,
                 y1 = height[-(n+1)],
                 y2 = height[-1],
                 steepness)

palette = setNames(rev(brewer.pal(11, "RdYlBu")), levels(steepness))

y_ran = range(height) * c(0.9, 1.1)

df2 = data.frame(x = c(df$x1, df$x2, df$x2, df$x1),
                 y = c(rep(y_ran[1], 2*n), df$y2, df$y1),
                 steepness,
                 id = 1:n)

ggplot() + theme_bw() +
  geom_segment(data = df, aes(x1, y1, xend = x2, yend = y2)) +
  geom_polygon(data = df2, aes(x, y, group = id), fill = "white") +
  geom_polygon(data = df2, aes(x, y , group = id, fill = steepness)) +
  scale_fill_manual(values = alpha(palette, 0.8), drop = FALSE) +
  scale_x_continuous(expand = c(0,0)) +
  scale_y_continuous(expand = c(0,0), limits = y_ran) +
  labs(x = "Distance [km]", y = "Height [m]")

