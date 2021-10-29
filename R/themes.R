#' Fishpals ggplot2 themes
#'
#'@description lightweight ggplot2 themes for Cramer Fish Sciences and fish lovers alike
#'
#'\describe{
#'\item{theme_report}{has gridlines}
#'\item{theme_pres}{intended for use in presentations. Transparent defaults, larger base_font}
#'\item{theme_pub}{good template for publications}
#'}
#'
#'@export
#'@importFrom ggplot2 theme_grey
#'@examples
#' library(ggplot2)
#'
#' extrafont::loadfonts(quiet=TRUE)
#'
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#'   geom_point(size = 4) +
#'   scale_color_fishpals("genidaqs") +
#'   theme_report(inner_border = TRUE)
#'
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Sepal.Length)) +
#'    geom_point(size = 4, alpha = .6) +
#'    scale_color_fishpals(discrete = FALSE, palette = "genidaqs") +
#'    theme_pres(base_family = "Megrim")
#' @export
#'
theme_report <- function(inner_border = TRUE,
                         outer_border = TRUE,
                         outer_border_color = "gray40",
                         inner_border_color = "gray25",
                         base_size = 11,
                         base_family = "Geneva") {

  ret <- theme_gray(base_size = base_size,
                      base_family = base_family) %+replace%

     # replace elements of theme_gray() with the following:
     theme(


      # draws outer border
      plot.background = element_rect(color = outer_border_color,
                                     fill = NA,
                                     size = rel(0.8)),

      # margins around panel (space between inner panel and outer border)
      plot.margin = margin(t = 47.5,
                           r = 17.5,
                           b = 17.5,
                           l = 17.5),

      # inner panel background and border - the plot area, drawn under the data
      # panel.background = element_rect(fill = "white",
      #                                 size = 0.35,
      #                                 color = inner_border_color),

      panel.border = element_rect(size = 0.35,
                                  color = inner_border_color,
                                  fill = NA),


      legend.background = element_rect(fill = "transparent",
                                       colour = NA),

      legend.key = element_rect(fill = "transparent",
                                colour = NA),

      panel.grid.major = element_line("grey75",
                                      size = rel(0.4)),

      panel.grid.minor = element_line("grey75",
                                      size = rel(0.15)),

      panel.spacing.x = unit(3, "lines"),

      strip.text = element_text(
        size = 10,
        face = "bold",
        margin = margin(
          t = 7.5,
          r = 0,
          b = 5.5,
          l = 0
        )
      ),

      strip.background = element_rect(
        fill = "gray95",
        color = "transparent",
        size = rel(0.75)
      ),

      axis.text = element_text(size = 13),

      axis.title = element_text(size = 14),

      complete = TRUE
    )

 if(!inner_border) {

   ret <- ret  %+replace%
     theme(

      #inner panel background and border - the plot area, drawn under the data
      panel.background = element_rect(fill = "white",
                                      size = NA,
                                      color = NA),

      axis.ticks = element_blank(),

      panel.border = element_rect(size = NA,
                                  color = NA,
                                  fill = NA)
      )

  }

  if(!outer_border) {

    ret <- ret  %+replace%
      # draws outer border
      theme(plot.background = element_rect(fill = NA,
                                           size = NA,
                                           color = NA))
      }
ret
  }



#' @rdname theme_pres
#' @export
theme_pres <- function (transparent = FALSE, base_size = 14, base_family = "Helvetica") {

    if(transparent) {

    theme_minimal(base_size = base_size, base_family = base_family) %+replace%

    theme(
      panel.background  = element_blank(),

      legend.background = element_rect(fill = "transparent",
                                       colour = NA),

      legend.key = element_rect(fill = "transparent",
                                colour = NA),

      legend.title = element_text(size = rel(0.8)),

      plot.title = element_text(size = rel(1.4)),

      axis.title.y = element_text(size = rel(1.2),
                                  vjust = 1.05,
                                  angle = 90),

      axis.title.x = element_text(size = rel(1.2),
                                  hjust = 0.975),

      plot.margin = unit(c(0.75, 0.75, 0.5, 0.75), "cm"),

      panel.grid.major = element_line("grey55",
                                      size = rel(0.25)),

      panel.grid.minor = element_line("grey60",
                                      size = rel(0.05)),
      complete = TRUE
    )
    } else {

    theme_minimal(base_size = base_size, base_family = base_family) %+replace%

    theme(

      legend.key = element_rect(fill = "transparent",
                                colour = NA),

      legend.title = element_text(size = rel(0.8)),

      plot.title = element_text(size = rel(1.4)),

      axis.title.y = element_text(size = rel(1.2),
                                  vjust = 1.05,
                                  angle = 90),

      axis.title.x = element_text(size = rel(1.2),
                                  hjust = 0.975),

      plot.margin = unit(c(0.75, 0.75, 0.5, 0.75), "cm"),

      panel.grid.major = element_line("grey55",
                                      size = rel(0.25)),

      panel.grid.minor = element_line("grey60",
                                      size = rel(0.05)),
      complete = TRUE
    )


    }
}

#' @rdname theme_pub
#' @export
theme_pub <- function(transparent = TRUE, base_size = 10.5, base_family = "Arial") {

  if(transparent) {

    theme_minimal(base_size = base_size, base_family = base_family) %+replace%

      theme(
        panel.background  = element_blank(),

        legend.background = element_rect(fill = "transparent",
                                         colour = NA),

        legend.key = element_rect(fill = "transparent",
                                  colour = NA),

        panel.grid.major = element_blank(),

        panel.grid.minor = element_blank() ,

        axis.line = element_line(size = rel(0.65)),

        axis.ticks = element_line(size = rel(0.6)),

        complete = TRUE
      )

  } else {

    theme_minimal(base_size = base_size, base_family = base_family) %+replace%

      theme(
        panel.background  = element_blank(),

        panel.grid.major = element_blank(),

        panel.grid.minor = element_blank() ,

        axis.line = element_line(size = rel(0.65)),

        axis.ticks = element_line(size = rel(0.6)),

        complete = TRUE
      )


  }
}
