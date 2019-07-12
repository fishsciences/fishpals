# context("fonts")

library(fishpals)


ggplot(mtcars) +
  geom_point(aes(x = disp, y = hp), alpha = 0.2) +
  theme_report()

ggplot(iris) +
  geom_bar(aes(x = Species, y = Sepal.Width, fill = Species), stat = "identity") +
  theme_report()

ggplot(mtcars) +
   geom_point(aes(x = disp, y = hp), alpha = 0.2) +
  facet_wrap(~am, scales = "free" ) +
  theme_report()
