context("st_err")

test_that("exits on non-numeric", {
  expect_error(
    st_err("a")
  )
})

test_that("exits if na.rm is non-boolean", {
  x <- runif(5, 1, 5)
  expect_error(
    st_err(x, na_rm = "FUN")
  )
})

test_that("success", {
  x <- runif(5, 1, 5)
  expect_equal(
    st_err(x, na_rm = F)
    , sd(x, na.rm = F) / ((length(x)) ^ 0.5)
  )
  
  x[2] <- NA
  expect_equal(
    st_err(x, na_rm = T)
    , sd(x, na.rm = TRUE) / ((length(x) - sum(is.na(x))) ^ 0.5)
  )
})
