#' Function that extracts hex codes form the fishpals_colors vector by name
#'
#' @md
#' @param ... Quoted color name or vector of names.
#' @return The 6-digit hexes attached to the name
#'
#' @export
#' @examples
#' get_fishpals_cols()
#' get_fishpals_cols("chinook red")

get_fishpals_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (fishpals_cols)

  fishpals_cols[cols]
}
