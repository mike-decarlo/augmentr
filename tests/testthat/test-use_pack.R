context("test-use_pack")

test_that("installing packages works", {
  expect_message(
    use_pack("gapminder", update = FALSE)
  )
})

test_that("updating packages works", {
  expect_message(
    use_pack("gapminder", update = TRUE)
  )
})

test_that("installing with packs = NULL errors", {
  expect_error(
    use_pack(packs = NULL)
  )
  expect_error(
    use_pack()
  )
})
