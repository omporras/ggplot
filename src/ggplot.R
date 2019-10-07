library(tidyverse)
gapminder <- read_csv("data/gapminder.csv")
gapminder
gapminder_1977 <- filter(gapminder, year == 1977)
gapminder_1977
ggplot(data = gapminder_1977)
gapminder_1977
ggplot(data = gapminder_1977)
library(tidyverse)
ggplot(data = gapminder_1977)
ggplot(
  data = gapminder_1977, 
  mapping = aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop)
) +
  geom_point()
ggplot(
  data = gapminder_1977, 
  mapping = aes(x = pop, y = country, colour = continent, size = pop)
) +
  geom_point()
ggplot(
  data = gapminder_1977, 
  mapping = aes(x = country, y = pop, colour = gdpPercap, size = pop)
) +
  geom_point()
ggplot(
  data = gapminder_1977
) +
  geom_point( mapping = aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop) )

ggplot(data = gapminder_1977)+
  geom_point(mapping = aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop)) +
  scale_x_log10()
geom_point
?geom_point
ggplot(gapminder_1977, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(colour = "blue", size = 5) 
ggplot(
  data = gapminder_1977, 
  mapping = aes(x = gdpPercap, y = lifeExp, colour = continent, size = pop)
) +
  geom_point(shape = "square") +
  scale_x_log10()

ggplot(data = gapminder, aes(x = year, y = lifeExp, group = country, color = continent)) +
  geom_line()
gapminder
ggplot(data = gapminder,aes(x = year, y = lifeExp, group = country, colour = continent)) + geom_point()


