context("test-use_pack")

test_that("installing packages works", {
  expect_message(
    use_pack("harrypotter")
  )
  unloadNamespace("harrypotter")
})

test_that("installing with packs = NULL errors", {
  expect_error(
    use_pack(packs = NULL)
  )
  expect_error(
    use_pack()
  )
})
