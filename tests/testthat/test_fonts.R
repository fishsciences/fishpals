# context("fonts")
# the structure of a theme is a list of lists

library(fishpals)
library(ggplot2)

ggplot(mtcars) +
  geom_point(aes(x = disp, y = hp)) +
  theme_report(inner_border = TRUE,
               outer_border = TRUE)




ggplot(iris) +
  geom_bar(aes(x = Species, y = Sepal.Width, fill = Species), stat = "identity") +
  theme_pub() +
  scale_fill_fishpals()

ggplot(mtcars) +
   geom_point(aes(x = disp, y = hp, color = factor(carb) ),
              size = 2.5) +
  facet_wrap(~am, scales = "free" ) +
  scale_color_fishpals("surgewrasse", discrete = TRUE) +
  theme_report()


ggplot(mtcars) +
   geom_point(aes(x = disp, y = hp, color = carb ),
              size = 2.5) +
  facet_wrap(~am, scales = "free" ) +
  scale_color_fishpals("surgewrasse", discrete = FALSE) +
  theme_report()


#-------------------------------------------------------#
# install.packages("ggplot2")
# load package and data
options(scipen=999)  # turn-off scientific notation like 1e+48
theme_set(theme_report())  # pre-set the bw theme.
data("midwest", package = "ggplot2")
# midwest <- read.csv("http://goo.gl/G1K41K")  # bkup data source

# Scatterplot
ggplot(midwest, aes(x=area, y=poptotal)) +
  geom_point(aes(col=state, size=popdensity)) +
  geom_smooth(method="loess", se=F) +
  xlim(c(0, 0.1)) +
  ylim(c(0, 500000)) +
  labs(subtitle="Area Vs Population",
       y="Population",
       x="Area",
       title="Scatterplot",
       caption = "Source: midwest") +
  scale_color_fishpals("adultchinook")

#-------------------------------------------------------#

data(mpg, package="ggplot2")

mpg_select <- mpg[mpg$manufacturer %in% c("audi", "ford", "honda", "hyundai"), ]

# Scatterplot

ggplot(mpg_select, aes(displ, cty)) +
  labs(subtitle="mpg: Displacement vs City Mileage",
       title="Bubble chart") +
  geom_jitter(aes(col=manufacturer, size=hwy)) +
  geom_smooth(aes(col=manufacturer), method="lm", se=F) +
  scale_color_fishpals("genidaqs", discrete = TRUE)

#-------------------------------------------------------#
# Data Prep
theme_set(theme_report())
data("mtcars")  # load data
mtcars$`car name` <- rownames(mtcars)  # create new column for car names
mtcars$mpg_z <- round((mtcars$mpg - mean(mtcars$mpg))/sd(mtcars$mpg), 2)  # compute normalized mpg
mtcars$mpg_type <- ifelse(mtcars$mpg_z < 0, "below", "above")  # above / below avg flag
mtcars <- mtcars[order(mtcars$mpg_z), ]  # sort
mtcars$`car name` <- factor(mtcars$`car name`, levels = mtcars$`car name`)  # convert to factor to retain sorted order in plot.

# Diverging Barcharts
ggplot(mtcars, aes(x=`car name`, y=mpg_z, label=mpg_z)) +
  geom_bar(stat='identity', aes(fill=mpg_type), width=.5)  +
  scale_fill_fishpals("juvsteel",

                    name="Mileage",
                    labels = c("Above Average",
                               "Below Average")) +
  labs(subtitle="Normalised mileage from 'mtcars'",
       title= "Diverging Bars") +
  coord_flip()
