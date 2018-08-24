context("test-use_packs")

test_that("installing packages works", {
  packs <- c("nycflights13")
  expect_message(
    use_packs(packs)
  )
})
