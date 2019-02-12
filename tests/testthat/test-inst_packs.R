context("test-inst_packs")

test_that("installing packages works", {
  expect_message(
    inst_packs("gapminder")
  )
})

test_that("installing with packs = NULL errors", {
  expect_error(
    inst_packs()
  )
})

# test_that("attempting to update already installed package gets message", {
#   expect_message(
#     inst_packs("gapminder")
#   )
# })

test_that("attempting to install already installed package gets message", {
  expect_message(
    inst_packs("gapminder")#, update = FALSE
  )
})
