#' Fishpals ggplot2 themes
#'
#'@description lightweight ggplot2 themes for Cramer Fish Sciences and fish lovers alike
#'
#'\describe{
#'\item{theme_foundation}{Code modified from [jrnold's theme_foundation](https://github.com/jrnold/ggthemes/blob/master/R/theme-foundation.R); designed to be a foundation from which the other themes are built, and not meant to be used directly.}
#'\item{theme_report}{has gridlines}
#'\item{theme_pres}{intended for use in presentations. Dark theme, larger base_font}
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
#'   theme_report()
#'
ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Sepal.Length)) +
   geom_point(size = 4, alpha = .6) +
   scale_color_fishpals(discrete = FALSE, palette = "genidaqs") +
   theme_pres()


theme_foundationfp <- function(base_size = 11, base_family = "Geneva") {
  thm <- theme_grey(base_size = base_size, base_family = base_family)

  # these additions to the foundation theme just remove some of the defaults of theme_gray and set them to transparent/NA/NULL to for other themes to iterate on
  thm + theme(
              panel.background = element_rect(color = NA),
              legend.background = element_rect(colour = NA),
              )
}

#' @export
#'
theme_report <- function(inner_border = TRUE,
                         outer_border = TRUE,
                         outer_border_lwd = 0.5,
                         outer_border_color = "black") {
  ret <- theme_foundationfp() %+replace%
    # replace elements of theme_gray() with the following:
    theme(
      panel.border = element_rect(colour = "gray25",
                                  size = rel(1.20)),

      plot.margin = margin(t = 7.5,
                           r = 7.5,
                           b = 7.5,
                           l = 7.5),

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

  grid::grid.rect(
    x = 0.5,
    y = 0.5,
    width = unit(0.99, "npc"),
    height = unit(0.99, "npc"),
    gp = grid::gpar(lwd = outer_border,
                    fill = NA,
                    col = outer_border_color)
  )

  if (inner_border == FALSE) {
    ret <- ret + theme(panel.border = element_rect(colour = NA),
                       axis.ticks = element_blank())

    grid::grid.rect(
      0.5,
      0.5,
      width = unit(0.99, "npc"),
      height = unit(0.99, "npc"),
      gp = grid::gpar(
        lwd = outer_border,
        fill = NA,
        col = outer_border_color
      )
    )
  }

  if (outer_border == FALSE) {
    ret <- theme_foundationfp() %+replace%
      theme(
        panel.border = element_rect(colour = "gray25", size = rel(1.20)),
        plot.margin = margin(7.5, 7.5, 7.5, 7.5),
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

  }
  ret
}

#' @rdname theme_pres
#' @export
theme_pres <- function (transparent = TRUE, base_size = 14, base_family = "Helvetica") {

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
