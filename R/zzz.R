.onAttach <- function(libname, pkgname) {

  if (.Platform$OS.type == "windows")  { # nocov start
    if (interactive()) packageStartupMessage("Registering Windows fonts with R")
    extrafont::loadfonts("win", quiet = TRUE)
  }

  if (interactive()) packageStartupMessage("Registering PDF & PostScript fonts with R")
  extrafont::loadfonts("pdf", quiet = TRUE)
  extrafont::loadfonts("postscript", quiet = TRUE)

  fnt <- extrafont::fonttable()
  if (!any(grepl("Avenir", fnt$FamilyName))) {
    packageStartupMessage("NOTE: The Avenir font is required to use these themes.")
  } # nocov end

}
