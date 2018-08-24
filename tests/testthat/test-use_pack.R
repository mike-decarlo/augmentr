context("test-use_pack")

test_that("installing packages works", {
  packs <- c("nycflights13")
  expect_message(
    use_pack(packs)
  )
  packs <- NA
  expect_error(
    expect_warning(
      use_pack(packs)
    )
  )
})
