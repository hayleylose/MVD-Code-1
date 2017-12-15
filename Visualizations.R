##Hayley Lose

##Code for graphs
library(plotly)
##Largest 5
table <- data.frame(x = c("Yellowstone", "Missoula", "Gallatin", "Flathead", "Cascade"),
                    y = c(.6375,.5805, .6352,.6338,.5733))
table$x <- factor(table$x, levels = c("Yellowstone", "Missoula", "Gallatin", "Flathead", "Cascade"))

plot_ly(
  data=table,
  x = ~x,
  y = ~y,
  title = "MT Largest Counties",
  type = "bar",
  color = I("red")) %>%
    layout(title = 'MT Largest Counties',
           xaxis = list(title = 'Counties'),
           yaxis = list(title = 'Vehicles % of Population',
                        dtick = 0.05))
  
#medium 5  
table <- data.frame(x = c("Deer Lodge", "Madison", "Valley", "Powell", "Blaine"),
                    y = c(.7399,.9095, .6789,.6145,.6205))
table$x <- factor(table$x, levels = c("Deer Lodge", "Madison", "Valley", "Powell", "Blaine"))

plot_ly(
  data=table,
  x = ~x,
  y = ~y,
  title = "MT Counties",
  type = "bar",
  color = I("blue")) %>%
  layout(title = 'MT Counties',
         xaxis = list(title = 'Counties'),
         yaxis = list(title = 'Vehicles % of Population',
                      dtick = 0.05))



#smallest 5
table <- data.frame(x = c("Prairie", "Wibaux", "Golden Valley", "Treasure", "Petroleum"),
                    y = c(.7420,.7475, .7786, .8280,.8609))
table$x <- factor(table$x, levels = c("Prairie", "Wibaux", "Golden Valley", "Treasure", "Petroleum"))

plot_ly(
  data=table,
  x = ~x,
  y = ~y,
  title = "MT Smallest Counties",
  type = "bar",
  color = I("black")) %>%
  layout(title = 'MT Largest Counties',
         xaxis = list(title = 'Counties'),
         yaxis = list(title = 'Vehicles % of Population',
                      dtick = 0.05))


##Code for the map with locations
library(ggplot2)
library(ggmap)
library(mapdata)

#use google's API for lat/lon
geocode('Yellowstone County, Montana')
geocode('Missoula County, Montana')
geocode('Gallatin County, Montana')
geocode('Flathead County, Montana')
geocode('Cascade County, Montana')

geocode('Deer Lodge County, Montana')
geocode('Madison County, Montana')
geocode('Valley County, Montana')
geocode('Powell County, Montana')
geocode('Blaine County, Montana')

geocode('Prairie County, Montana')
geocode('Wibaux County, Montana')
geocode('Golden Valley County, Montana')
geocode('Treasure County, Montana')
geocode('Petroleum County, Montana')

#point for largest 5
point1 <- data.frame(
  lon = c(-108.3006837, -113.687, -111.1194, -114.1531, -111.5453),
  lat = c(45.9166236, 47.02405, 45.53889, 48.42415, 47.46884),
  stringsAsFactors = FALSE
) 

#points for med 5
point2 <- data.frame(
  lon = c(-113.0212,-111.8865,-106.8305,-112.9745,-108.9462),
  lat = c(46.10953,45.46673,48.28557,46.93114,48.60654),
  stringsAsFactors = FALSE
) 

#points for smallest
point3 <- data.frame(
  lon = c(-105.4054,-104.3184,-109.1744,-107.2586,-108.3203),
  lat = c(46.7981,46.78366,46.37093,46.21067,47.15653),
  stringsAsFactors = FALSE
) 

map('county', region = 'Montana')
with(point1, points(lat ~ lon, pch = 19, col = 'red'))
with(point2, points(lat ~ lon, pch = 19, col = 'blue'))
with(point3, points(lat ~ lon, pch = 19, col = 'black'))

     





