context("test-use_packs")

test_that("packages to install is null causes error", {
  expect_error(
    use_packs()
  )
})
  
test_that("jcolors can be installed", {
  expect_message(
    use_packs("jcolors")#, update = FALSE
  )
  unloadNamespace("jcolors")
})

test_that("force jcolors can be installed", {
  expect_message(
    use_packs("jcolors", force = TRUE)#, update = FALSE
  )
  unloadNamespace("jcolors")
})

test_that("NA value for pakcages causes error and warning", {
  expect_error(
    expect_warning(
      use_pack(NA)
    )
  )
})
