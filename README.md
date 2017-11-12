
<!-- README.md is generated from README.Rmd. Please edit that file -->
fishpals
========

Species-specific Fish Color Palettes for Plots

Modeled after Karthik Ram's [`wesanderson`](https://CRAN.R-project.org/package=wesanderson) palettes package, methods areprovided to create species-specific color palettes inspired by fish that [Cramer Fish Sciences](http://www.fishsciences.net/) (CFS) has worked with in the past (note, photos below are examples and are not from CFS). Since CFS works mostly with North American, northwestern fish species, we're talking about a lot of greens, browns, and grays. But we're open to adding some tropical palettes.

Quick-start:
-----------------------
    devtools::install_github("fishsciences/fishpals")

    library(fishpals)

    ?fishpal()
    
Quick-start:
-----------------------

##### ggplot2
    ggplot(iris) +
    geom_point(aes(x = Sepal.Width, 
                 y = Petal.Width, 
                 color = factor(Petal.Width)), size = 3.5, show.legend = F) +
    scale_color_manual(values = 
                       fishpal("greensunfish", 
                                      length(unique(iris$Petal.Width)))) +  theme_void()
![ggplot_ex](https://github.com/fishsciences/fishpals/blob/master/fishphotos/ggplot_example.jpeg)

 ##### base plotting:                    
    plot(Petal.Width ~ Sepal.Width, data = iris, pch = 16, cex = 1.5,
     col = fishpal("greensunfish", 
                     length(unique(iris$Petal.Width))))
![base_ex](https://github.com/fishsciences/fishpals/blob/master/fishphotos/Baseplot_example.jpeg)

Species and life stages
-----------------------

Juvenile steelhead:

![juvenilesteelehad2](https://raw.githubusercontent.com/fishsciences/fishpals/master/fishphotos/juvenile_steelhead2.jpg)

Adult steelhead: 

![adultsteelhead](https://github.com/fishsciences/fishpals/blob/master/fishphotos/adult_steelhead2.jpg)

Adult Chinook salmon:

![adultchinook](https://c1.staticflickr.com/9/8614/30177831831_4194c59228_b.jpg)

Green sunfish:

![greensunfish](https://raw.githubusercontent.com/fishsciences/fishpals/master/fishphotos/green_sunfish.jpg)
