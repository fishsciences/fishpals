#' Display colors associated with a palette 
#' 
#' @details Adapted from the \code{scales} package (\url{https://cran.r-project.org/web/packages/scales/index.html}) for use with fishpals
#'
#' @description A quick way to view \code{fishpals}' color palettes
#' @param fishpal a string matching one of the \code{fishpals} color palettes (see \code{fishpals::fish_pals} for the full list).  The default is "cfs"
#' @param labels boolean, whether to show the hexadecimal representation of the colours in each tile
#' @param borders color of the borders of the tiles; matches the border argument of \code{graphics::rect()}. The default means par("fg"). Use border = NA to omit borders.
#' @param cex_label size of printed labels, works the same as \code{cex} parameter of plot()
#' @export
#' @examples
#' viewpals("genidaqs")
#' viewpals("adultchinook")
viewpals <- function(fishpal="cfs", 
                     labels = TRUE, 
                     borders = NULL, 
                     cex_label = 0.75)
{
    colours <- as.character(fishpals_pals[[fishpal]])
    n <- length(colours)
    ncol <- ceiling(sqrt(n))
    nrow <- ceiling(n/ncol)
    colours <- c(colours, rep(NA, nrow * ncol - length(colours)))
    colours <- matrix(colours, ncol = ncol, byrow = TRUE)
    old <- par(pty = "s", mar = c(0, 0, 0, 0))
    on.exit(par(old))
    size <- max(dim(colours))
    plot(c(0, size), c(0, -size), type = "n", xlab = "", ylab = "",
        axes = FALSE)
    rect(col(colours) - 1, -row(colours) + 1, col(colours), -row(colours),
        col = colours, border = borders)
    if (labels) {
        text(col(colours) - 0.5, -row(colours) + 0.5, colours,
            cex = cex_label)
    }
}
