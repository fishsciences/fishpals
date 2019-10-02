#' Fish palettes - groups colors into their palettes
#' The name of the palette is set here
#' @export
#'
get_fishpals_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (fishpals_cols)

  fishpals_cols[cols]
}

fishpals_pals <- list(

  `juvsteelhead` = get_fishpals_cols(
    "juvsteel green" ,
    "juvsteel taupe" ,
    "juvsteel grey" ,
    "juvsteel jungle green" ,
    "juvsteel tuscan red") ,

  `adultsteelhead` = get_fishpals_cols(
    "adultsteel dark liver" ,
    "adultsteel gray" ,
    "adultsteel feldgrau" ,
    "adultsteel spanish bistre",
     "adultsteel red ochre"
),

  `adultchinook` = get_fishpals_cols(
    "chinook red",
     "chinook pink",
    "chinook dark gray",
    "chinook blue",
       "chinook olive"

    ) ,

  `greensunfish` = get_fishpals_cols(
    "sunfish green" ,
    "sunfish tan" ,
    "sunfish yellow" ,
    "sunfish gray" ,
    "sunfish dark gray"),

  `cfs` = get_fishpals_cols(
    "CFS blue",
    "CFS dark gray" ,
    "CFS gridlines" ,
    "CFS tan" ,
    "CFS light tan" ,
    "CFS teal" ) ,

  `genidaqs` = get_fishpals_cols(
      "genidaqs yellow",
      "genidaqs pink",
      "genidaqs blue",
      "genidaqs green",
      "genidaqs brown"

),

`surgewrasse` = get_fishpals_cols(
  "surgewrasse orange" ,
  "surgewrasse teal"   ,
  "surgewrasse green"  ,
  "surgewrasse blue"   ,
  "surgewrasse purple"
)

)

