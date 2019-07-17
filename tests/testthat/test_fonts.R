# context("fonts")
# the structure of a theme is a list of lists

library(fishpals)


ggplot(mtcars) +
  geom_point(aes(x = disp, y = hp)) +
  theme_report()

ggplot(mtcars) +
  geom_point(aes(x = disp, y = hp)) +
  theme(plot.margin = unit(50, "pt"))

ggplot(iris) +
  geom_bar(aes(x = Species, y = Sepal.Width, fill = Species), stat = "identity") +
  theme_report()

ggplot(mtcars) +
   geom_point(aes(x = disp, y = hp)) +
  facet_wrap(~am, scales = "free" ) +
  theme_report()

