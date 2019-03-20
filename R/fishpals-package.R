#' Species-specific Fish Color Palettes for Plots
#'
#' Modeled after Karthik Ram's [`wesanderson`](https://CRAN.R-project.org/package=wesanderson)
#' palettes package, methods areprovided to create species-specific color palettes generated
#' from pictures of fish that [Cramer Fish Sciences](http://www.fishsciences.net/) (CFS)
#' has worked with in the past. Since CFS works mostly with North American, northwestern
#' fish species, we're talking about a lot of greens, browns, and grays. But we're open
#' to adding some tropical palettes.
#'
#' @md
#' @name fishpals
#' @docType package
#' @keywords internal
#' @author Myfanwy Johnston <myfanwy.johnston@@fishsciences.net>
#' @importFrom grDevices colorRampPalette pdfFonts postscriptFonts
#' @importFrom ggplot2 theme theme_minimal rel %+replace% element_blank element_rect
#' @importFrom ggplot2 element_line discrete_scale scale_color_gradientn ggplot aes
#' @importFrom graphics barplot par
NULL
