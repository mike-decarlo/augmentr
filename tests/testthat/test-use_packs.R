context("test-use_packs")

if ("harrypotter" %in% installed.packages()[, 1]) {
  unloadNamespace("harrypotter")
  remove.packages("harrypotter")
}

test_that("installing with packs = NULL errors", {
  expect_error(
    use_packs()
  )
})

test_that("installing packages works", {
  expect_message(
    use_packs("harrypotter")
  )
  unloadNamespace("harrypotter")
})

test_that("attempting to install already installed package gets message", {
  expect_message(
    use_packs("harrypotter")
  )
  unloadNamespace("harrypotter")
  remove.packages("harrypotter")
})
