context("test-use_packs")

test_that("installing packages works", {
  expect_message(
    use_packs("harrypotter")
  )
})

test_that("installing with packs = NULL errors", {
  expect_error(
    use_packs()
  )
})

test_that("attempting to install already installed package gets message", {
  expect_message(
    use_packs("harrypotter")
  )
})
