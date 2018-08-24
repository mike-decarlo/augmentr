context("test-use_packs")

test_that("installing packages works", {
  packs <- c("nycflights13", "gapminder")
  expect_message(
    expect_output(
      use_packs(packs)
    )
  )
})
