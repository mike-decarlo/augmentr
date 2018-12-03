context("test-use_packs")

test_that("packages to install is null causes error", {
  expect_error(
    use_packs()
  )
})
  
test_that("gapminder can be installed", {
  expect_message(
    use_packs("gapminder")
  )
})

test_that("NA value for pakcages causes error and warning", {
  packs <- NA
  expect_error(
    expect_warning(
      use_pack(packs)
    )
  )
})
