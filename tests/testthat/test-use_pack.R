context("test-use_pack")

test_that("installing packages works", {
  expect_message(
    use_pack("harrypotter")
  )
})

test_that("installing with packs = NULL errors", {
  expect_error(
    use_pack()
  )
})

test_that("attempting to install already installed package gets message", {
  expect_message(
    use_pack("harrypotter")
  )
})
