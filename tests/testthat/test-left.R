context("test-left")

test_that("left substring extraction works", {
  some_string <- "supercalifragilisticexpialidocious"
  left_some_string <- left(some_string, 5)
  correct_substr <- "super"
  expect_identical(left_some_string, correct_substr)
})
