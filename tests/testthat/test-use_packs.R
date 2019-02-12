context("test-use_packs")

test_that("packages to install is null causes error", {
  expect_error(
    use_packs()
  )
})
  
test_that("gapminder can be installed", {
  expect_message(
    use_packs("gapminder", update = FALSE)
  )
  unloadNamespace("gapminder")
})

test_that("gapminder updated if available", {
  expect_message(
    use_packs("gapminder")
  )
  unloadNamespace("gapminder")
})

test_that("force gapminder can be installed", {
  expect_message(
    use_packs("gapminder", update = FALSE, force = TRUE)
  )
  unloadNamespace("gapminder")
})

test_that("NA value for pakcages causes error and warning", {
  expect_error(
    expect_warning(
      use_pack(NA)
    )
  )
})
