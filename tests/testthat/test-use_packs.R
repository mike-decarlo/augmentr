context("test-use_packs")

test_that("packages to install is null causes error", {
  expect_error(
    use_packs()
  )
})
  
test_that("harrypotter can be installed", {
  expect_message(
    use_packs("harrypotter", force = FALSE)
  )
  unloadNamespace("harrypotter")
  remove.packages("harrypotter")
})

test_that("force harrypotter can be installed", {
  expect_message(
    use_packs("harrypotter", force = TRUE)
  )
  unloadNamespace("harrypotter")
  remove.packages("harrypotter")
})

test_that("NA value for pakcages causes error and warning", {
  expect_error(
    expect_warning(
      use_pack(NA)
    )
  )
})
