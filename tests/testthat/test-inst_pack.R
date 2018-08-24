context("test-inst_packs")

test_that("installing packages works", {
  packs <- c("nycflights13")
  expect_silent(
    inst_packs(packs)
  )
  packs <- NA
  expect_warning(
    inst_packs(packs)
  )
})
