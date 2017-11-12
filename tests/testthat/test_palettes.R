context("Palettes")

test_that("Palette values are generated properly", {

  expect_equal(
    fishpal("juvsteel", 1, "discrete"),
<<<<<<< HEAD
    structure("#A3C595", class = "palette", name = "juvsteel")
=======
    structure("#455121", class = "palette", name = "juvsteel")
>>>>>>> d7dfac191c7e3a5da4fb844335688eb6095f0bf0
  )

  # ... more ...

})


# Visual tests ------------------------------------------------------------

test_that("Palettes values are visually applied properly", {

  ggplot2::ggplot(iris) +
    ggplot2::geom_point(
      ggplot2::aes(x = Sepal.Width, y = Petal.Width,
                   color = factor(Petal.Width)), size = 3) +
    ggplot2::scale_color_manual(values = fishpal("adultchinook", 22, type = "continuous")) +
    ggplot2::theme_void() -> gg

  vdiffr::expect_doppelganger("colors are presented as expected", gg)

})
<<<<<<< HEAD

# Different numbers of variables tests -----------------------
# Aren't really tests yet - just trying out with different kinds of geoms

# ggplot(Orange, aes(age)) + geom_bar(aes(fill = Tree)) +
#   scale_fill_manual(values = fishpal("greensunfish", n = 5, "discrete"))
#
# ggplot(Orange) + geom_point(aes(x = age, y = Tree),
#                             color = fishpal("greensunfish", 1))
#
=======
>>>>>>> d7dfac191c7e3a5da4fb844335688eb6095f0bf0
