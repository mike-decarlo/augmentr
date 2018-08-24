context("test-use_packs")

test_that("installing packages works", {
  expect_error(
    use_packs()
  )
  packs <- c("gapminder")
  expect_message(
    use_packs(packs)
  )
  packs <- NA
  expect_error(
    expect_warning(
      use_pack(packs)
    )
  )
})
