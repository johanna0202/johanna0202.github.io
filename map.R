#Karte mit R

install.packages("tmap")
install.packages("leaflet")
install.packages("sf")
install.packages("dyplr")
install.packages("ggplot")
install.packages("raster")
install.packages("spData")
install.packages("spDataLarge")
install.packages("sp")

install.packages("ggplot2")
library(ggplot2)
library(sp)
library(sf)
library(raster)
library(dplyr)
library(spData)
library(spDataLarge)

library(tmap)    # for static and interactive maps
library(leaflet) # for interactive maps
library(ggplot2) # tidyverse data visualization package

data("world")

urb_anim = tm_shape(world) + tm_polygons() + 
  tm_shape(urban_agglomerations) + tm_dots(size = "population_millions") +
  tm_facets(along = "year", free.coords = FALSE)

tmap_mode("view")
tm_shape(World) +
  tm_polygons(c("HPI", "economy")) +
  tm_facets(sync = TRUE, ncol = 2)


install.packages("leaflet")
library(leaflet)
library(dyplr)
install.packages("dplyr")
library(dplyr)

leaflet() %>% addTiles() %>%
  addCircleMarkers(data = quakes, lat = ~lat, lng = ~long, radius = ~0.1)

head(quakes)
