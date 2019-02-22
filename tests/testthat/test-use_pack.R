context("test-use_pack")

if ("harrypotter" %in% installed.packages()[, 1]) {
  unloadNamespace("harrypotter")
  remove.packages("harrypotter")
}

test_that("installing with packs = NULL errors", {
  expect_error(
    use_pack()
  )
})

test_that("installing packages works", {
  expect_message(
    use_pack("harrypotter")
  )
  unloadNamespace("harrypotter")
})

test_that("attempting to install already installed package gets message", {
  expect_message(
    use_pack("harrypotter")
  )
  unloadNamespace("harrypotter")
  remove.packages("harrypotter")
})

test_that("force installing already installed package works", {
  expect_message(
    use_pack("harrypotter", force =  TRUE)
  )
  unloadNamespace("harrypotter")
  remove.packages("harrypotter")
})
