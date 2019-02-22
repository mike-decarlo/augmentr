context("test-install_packs")

test_that("installing packages works", {
  expect_message(
    install_packs("harrypotter")
  )
})

test_that("installing with packs = NULL errors", {
  expect_error(
    install_packs()
  )
})

test_that("attempting to install already installed package gets message", {
  expect_message(
    install_packs("harrypotter")
  )
})
