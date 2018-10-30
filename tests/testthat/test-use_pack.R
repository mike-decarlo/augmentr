context("test-use_pack")

test_that("installing packages works", {
  packs <- c("nycflights13")
  expect_message(
    use_pack(packs)
  )
})

test_that("installing with packs = NULL errors", {
  packs <- NULL
  expect_error(
    use_pack(packs)
  )
  expect_error(
    use_pack()
  )
})
