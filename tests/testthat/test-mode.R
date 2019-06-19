context("test-mode")

num_vec <- c(1, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 5, 5, 6, 6, 7)
chr_vec <- as.character(num_vec)
fac_vec <- as.factor(chr_vec)

test_that("Correct identification of the mode regardless of class", {
  # Should be 3/"3"
  expect_equal(
    mode(num_vec)
    , 3
  )
  expect_equal(
    mode(chr_vec)
    , "3"
  )
  expect_equal(
    mode(fac_vec)
    , fac_vec[5]
  )
})
