#' Fish palettes - groups colors into their palettes
#'
#' @export
#'
get_fishpals_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (fishpals_cols)

  fishpals_cols[cols]
}

fishpals_pals <- list(

  `juvsteel` = get_fishpals_cols(
    "juvsteel green" ,
    "juvsteel taupe" ,
    "juvsteel grey" ,
    "juvsteel jungle green" ,
    "juvsteel tuscan red") ,

  `adultsteel` = get_fishpals_cols(
    "adultsteel dark liver" ,
    "adultsteel red ochre" ,
    "adultsteel gray" ,
    "adultsteel feldgrau" ,
    "adultsteel spanish bistre"),

  `adultchinook` = get_fishpals_cols(
    "chinook red",
    "chinook olive" ,
    "chinook dark olive",
    "chinook pink" ,
    "chinook teal") ,

  `greensunfish` = get_fishpals_cols(
    "sunfish green" ,
    "sunfish tan" ,
    "sunfish yellow" ,
    "sunfish gray" ,
    "sunfish dark gray"),

  `CFS` = get_fishpals_cols(
    "CFS blue",
    "CFS dark gray" ,
    "CFS gridlines" ,
    "CFS tan" ,
    "CFS light tan" ,
    "CFS teal" ) ,

  `genidaqs` = get_fishpals_cols(
    "genidaqs green" ,
    "genidaqs yellow" ,
    "genidaqs pink" ,
    "genidaqs blue")

)
