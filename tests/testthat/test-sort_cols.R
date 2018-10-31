context("test-sort_cols")

test_that("sorting cols works when all inputs are entered correctly", {
  x <- data.frame(b = c(6, 7, 8, 9, 10), a = c(1, 2, 3, 4, 5))
  expect_message(
    sort_cols(x = x, order = "asc")
  )
  expect_message(
    sort_cols(x = x, order = "desc")
  )
})

test_that("errors when x null", {
  expect_error(
    sort_cols(order = "asc")
  )
  expect_error(
    sort_cols(order = "desc")
  )
})

test_that("warns when x not a 'data.frame' class", {
  x <- cbind(b = c(6, 7, 8, 9, 10), a = c(1, 2, 3, 4, 5))
  expect_warning(
    sort_cols(x = x, order = "asc")
  )
  expect_warning(
    sort_cols(x = x, order = "desc")
  )
})

test_that("errors if not 'asc' or 'desc' entered for order", {
  x <- data.frame(b = c(6, 7, 8, 9, 10), a = c(1, 2, 3, 4, 5))
  expect_error(
    sort_cols(x = x, order = "error")
  )
})

test_that("errors if order not a character input", {
  x <- data.frame(b = c(6, 7, 8, 9, 10), a = c(1, 2, 3, 4, 5))
  expect_error(
    sort_cols(x = x, order = 0)
  )
})
