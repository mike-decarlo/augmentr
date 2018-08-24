context("test-out")

test_that("out exclusions works", {
  a <- 6
  b <- c(10, 9, 8, 7, 6, 5)
  c <- 1
  expect_false(a %out% b)
  expect_true(c %out% b)
})
