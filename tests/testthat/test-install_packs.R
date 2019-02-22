context("test-install_packs")

if ("harrypotter" %in% installed.packages()[, 1]) {
  unloadNamespace("harrypotter")
  remove.packages("harrypotter")
}

test_that("installing with packs = NULL errors", {
  expect_error(
    install_packs()
  )
})

test_that("installing packages works", {
  expect_message(
    install_packs("harrypotter")
  )
  unloadNamespace("harrypotter")
})

test_that("attempting to install already installed package gets message", {
  expect_message(
    install_packs("harrypotter")
  )
  unloadNamespace("harrypotter")
  remove.packages("harrypotter")
})

test_that("force installing already installed package works", {
  expect_message(
    install_packs("harrypotter", force =  TRUE)
  )
  unloadNamespace("harrypotter")
  remove.packages("harrypotter")
})
