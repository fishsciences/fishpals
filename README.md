
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fishpals

Species-specific Fish Color Palettes for Plots

Heavily influenced by Diane Cook’s `ochre` package and Karthik Ram’s
`wesanderson` package, this package provides species-specific color
palettes (generated from pictures of fish that ‘Cramer Fish Sciences’
(‘CFS’) has worked with in the past), and some lightweight ggplot2
themes. Since ‘CFS’ works mostly with North American, northwestern fish
species, we’re talking about a lot of greens, browns, and grays. But
we’re open to adding some tropical palettes.

## Usage

``` 
devtools::install_github('fishciences/fishpals')
library(fishpals)
library(ggplot2)
ggplot(iris, aes(Sepal.Width, Sepal.Length)) +
   geom_point(size = 4, alpha = 0.85, aes(color = Species), show.legend = FALSE) +
   scale_color_fishpals("greensunfish") +
   theme_report()
   
```

![ggplot2\_example](https://raw.githubusercontent.com/fishsciences/fishpals/master/fishphotos/ggplot2_example.jpeg)

See `?fishpals::theme_report` for all available themes and
`?fishpals::scale_color_fishpals` for available `ggplot2` scales.

## Species and life stages

Juvenile
steelhead:

![juvenilesteelehad2](https://raw.githubusercontent.com/fishsciences/fishpals/master/fishphotos/juvenile_steelhead2.jpg)

Adult Chinook
salmon:

![adultchinook](https://c1.staticflickr.com/9/8614/30177831831_4194c59228_b.jpg)

Green
sunfish:

![greensunfish](https://raw.githubusercontent.com/fishsciences/fishpals/master/fishphotos/green_sunfish.jpg)
