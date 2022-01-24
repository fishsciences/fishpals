#' Fishpals ggplot2 themes
#'
#'@description lightweight ggplot2 themes for Cramer Fish Sciences and fish lovers alike
#'
#'@details
#'\describe{
#'\item{theme_report}{good template theme for reports. Default inner panel border and light gridlines}
#'\item{theme_pres}{intended for use in presentations. Larger default fonts, no gridlines, clean background suited for transparency options}
#'\item{theme_pub}{good baseline template for publications.  Smaller default fonts, theme suited for black and white.}
#'}
#'
#'@importFrom ggplot2 theme_grey
#'
#'@rdname themes
#'@export
#'
theme_report <- function(inner_border = TRUE,
                         outer_border = TRUE,
                         outer_border_color = "gray40",
                         inner_border_color = "gray25",
                         base_size = 11,
                         base_family = "Verdana") {

  ret <- theme_gray(base_size = base_size,
                      base_family = base_family) %+replace%

     # replace elements of theme_gray() with the following:
     theme(


      # draws outer border
      plot.background = element_rect(color = outer_border_color,
                                     fill = "white",
                                     size = rel(0.9)),

      # margins around panel (space between inner panel and outer border)
      plot.margin = margin(t = 47.5,
                           r = 17.5,
                           b = 17.5,
                           l = 17.5),

      # inner panel background and border
      #-------------------------------------------------------#

      panel.background = element_rect(fill = "white"), # drawn under the data

      panel.border = element_rect(size = rel(0.8), # drawn over the data; this makes the inner border
                                  color = inner_border_color,
                                  fill = NA), # fill has to be NA otherwise it covers things up

      legend.background = element_rect(fill = "transparent",
                                       colour = NA),

      legend.key = element_rect(fill = "transparent",
                                colour = NA),

      legend.position = "bottom",

      legend.direction = "horizontal",

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

      axis.text = element_text(size = 11),

      axis.title = element_text(size = 12),

      title = element_text(size = 14),

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



#' @rdname themes
#' @export
theme_pres <- function (transparent = TRUE,
                        base_size = 14,  # larger default size for presentations
                        base_family = "Helvetica") {

    # default: background fill is transparent
    ret = theme_minimal(base_size = base_size, base_family = base_family) %+replace%

    theme(
      rect = element_rect(fill = "transparent",
                          color = NA),

      plot.background = element_rect(fill = "transparent"),

      legend.background = element_rect(fill = "transparent",
                                       colour = NA),

      legend.key = element_rect(fill = "transparent",
                                colour = NA),

      legend.title = element_text(size = rel(0.8)),

      plot.title = element_text(size = rel(1.4),
                                margin = margin(0, 0, 10, 0)),

      axis.title.y = element_text(size = rel(1.2),
                                  vjust = 1.05,
                                  angle = 90,
                                  margin = margin(0, 5, 0, 0)),

      axis.title.x = element_text(size = rel(1.2),
                                  hjust = 0.975,
                                  margin = margin(5, 0, 0, 0)),

      plot.margin = unit(c(0.75, 0.75, 0.5, 0.75), "cm"),

      panel.grid.major = element_blank(),

      panel.grid.minor = element_blank(),

      panel.spacing.x = unit(4, "lines"),

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

      panel.background = element_rect(fill = "white"), # drawn under the data

      panel.border = element_rect(size = rel(0.25), # drawn over the data; this makes the inner border
                                  color = "gray30",
                                  fill = NA), # fill has to be NA otherwise it covers things up

      strip.background = element_rect(
        fill = NA,
        color = "gray30",
        size = rel(0.25)
      ),
      complete = TRUE
    )
ret
}


#' @rdname themes
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
