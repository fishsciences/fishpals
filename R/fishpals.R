
fishpals <- function(palette = "CFS", reverse = FALSE, ...) {
  pal <- fishpals_pals[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)

}
