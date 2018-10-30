context("test-inst_packs")

test_that("installing packages works", {
  packs <- c("nycflights13")
  expect_message(
    inst_packs(packs)
  )
})

test_that("installing with packs = NULL errors", {
  packs <- NULL
  expect_error(
    inst_packs(packs)
  )
  expect_error(
    inst_packs()
  )
})
