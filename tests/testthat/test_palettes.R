# context("Palettes")
#
# test_that("Palette values are generated properly", {
#
#   expect_equal(
#     fishpal("juvsteel", 1, "discrete"),
#     structure("#A3C595", class = "palette", name = "juvsteel")
#   )
#
#   # ... more ...
#
# })


# Visual tests ------------------------------------------------------------

# test_that("Palettes values are visually applied properly", {
#
#   ggplot2::ggplot(iris) +
#     ggplot2::geom_point(
#       ggplot2::aes(x = Sepal.Width, y = Petal.Width,
#                    color = factor(Petal.Width)), size = 3) +
#     ggplot2::scale_color_manual(values = fishpal("adultchinook", 22, type = "continuous")) +
#     ggplot2::theme_void() -> gg
#
#   vdiffr::expect_doppelganger("colors are presented as expected", gg)
#
# })

# Different numbers of variables tests -----------------------
# Aren't really tests yet - just trying out with different kinds of geoms

# library(ggplot2)
# ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#     geom_point(size = 4) +
#     scale_color_fishpals("genidaqs")
#
# ggplot(mtcars, aes(mpg, wt)) +
#    geom_point(aes(colour = hp), size = 4) +
#    scale_color_fishpals("adultchinook", discrete = FALSE)

# ggplot(iris, aes(Sepal.Width, Sepal.Length, fill = Species)) +
#  geom_bar(stat = "identity") +
#  scale_fill_fishpals()
library(ggplot2)
ggplot(iris, aes(Sepal.Width, Sepal.Length)) +
     geom_point(size = 4, aes(color = Species), show.legend = FALSE) +
     scale_color_fishpals("adultchinook") +
     theme_pub()

scales::show_col(fishpals_pals[["CFS"]])
