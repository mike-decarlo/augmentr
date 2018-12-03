context("test-inst_packs")

test_that("installing packages works", {
  expect_message(
    inst_packs("nycflights13")
  )
})

test_that("installing with packs = NULL errors", {
  expect_error(
    inst_packs()
  )
})
