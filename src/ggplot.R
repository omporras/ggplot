# challenge 1
# Discussion over deconstructed graphics (Hans_Rosling_BBC)
# challlenge 2 made new project and created repository
library(tidyverse)
gapminder <- read_csv("data/gapminder.csv")
gapminder
gapminder_1977 <- filter(gapminder, year == 1977)
gapminder_1977
ggplot(data = gapminder_1977)
ggplot(
  data = gapminder_1977, 
  mapping = aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop)
)
#challenge 3. geometrics provided into graphic
ggplot(
  data = gapminder_1977, 
  mapping = aes(x = pop, y = country, colour = continent, size = pop)
) +
  geom_point()

ggplot(data = gapminder_1977)+
  geom_point(mapping = aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop)) +
  scale_x_log10()
#challenge 4. substituted different data combinations to produce different results in the graphics
ggplot(
  data = gapminder_1977, 
  mapping = aes(x = country, y = pop, colour = gdpPercap, size = pop)
) +
  geom_point()
ggplot(
  data = gapminder_1977
) +
  geom_point( mapping = aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop) )

?geom_point
#challenge 5. changed geometrics colour and size
ggplot(gapminder_1977, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(colour = "blue", size = 5) 
#changed shape to square
ggplot(
  data = gapminder_1977, 
  mapping = aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop)
) +
  geom_point(shape = "square") +
  scale_x_log10()
#challenge 6. setting aesthetics in geometrics
ggplot(
  data = gapminder_1977, 
  mapping = aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop)
) +
  geom_point () +
  scale_x_log10()
ggplot(
  data = gapminder_1977, 
  mapping = aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop)
) +
  geom_point(colour = "blue") + 
  scale_x_log10()
ggplot(
  data = gapminder_1977, 
  mapping = aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop)
) +
  geom_point(colour = "blue") + 
  scale_x_log10()
# mapping gets override when aesthetic are set in geometrics.

#using whole gapminder
#challenge 7. change of life expectancy over time
ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp)) + geom_point()
# used geom_line instead. Produced a different graphic
ggplot(data = gapminder, aes(x = year, y = lifeExp, group = country, color = continent)) +
  geom_line()
ggplot(data = gapminder,aes(x = year, y = lifeExp, group = country, colour = continent)) + geom_point() + geom_line()
# challenge 8 coloured line for continents, circles in black. Change in aesthetic must be done inside of geometrics or by changing the command inside geom_point(colour = "black)
ggplot(data = gapminder,aes(x = year, y = lifeExp, group = country)) + geom_point() + geom_line(mapping = aes(colour = continent))

#transformation and statistics

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5) + 
  scale_x_log10()
# modifying alpha allows easy visualisation of data when heavy clusters exist
#"lm" incorporates trending line (in this case straight line). The size of the line can be modified inside geom_smooth
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5) + 
  scale_x_log10() +
  geom_smooth(method = "lm")
# challenge 9. modified colour and size of geo_points. done inside of geo_points
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(size = 3, colour = "green")) + 
  scale_x_log10() +
  geom_smooth(method = "lm")
# challenge 10. Point of different shape
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) +
  geom_point() + 
  scale_x_log10() +
  geom_smooth(method = "lm")
# challenge 11. use scale colour brewer to change the color of the graphic
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, colour = continent)) +
  geom_point() + 
  scale_x_log10() +
  geom_smooth(method = "lm") + 
  scale_color_brewer(palette = "BuGn")

# separating figures



