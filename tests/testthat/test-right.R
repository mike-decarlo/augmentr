context("test-right")

test_that("right substring extraction works", {
  some_string <- "supercalifragilisticexpialidocious"
  right_some_string <- right(some_string, 5)
  correct_substr <- "cious"
  expect_identical(right_some_string, correct_substr)
})
