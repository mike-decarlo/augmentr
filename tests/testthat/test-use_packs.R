context("test-use_packs")

test_that("installing packages works", {
  packs <- c("nycflights13", "gapminder")
  expect_message(
    use_packs(packs)
  )
  packs <- NA
  expect_error(
    expect_warning(
      use_packs(packs)
    )
  )
})
