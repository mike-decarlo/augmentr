context("test-insert_out_addin")

test_that("inserted text is what it should be", {
  x <- insert_out_addin()
  expect_identical(
    x$text
    , " %out% "
  )
})
