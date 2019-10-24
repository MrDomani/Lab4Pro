testthat::test_that("Mean from singleton",
                    expect_equal(my_mean(1),1))

testthat::test_that("Correct mean", {
  
  x <- list(1:5, rep(1,5), c(1,4,7))
  expect_equal(my_mean(x), c(3, 1, 4))
  
})

testthat::test_that("Correct answer to character",{
  x <- list("LALALA")
  expect_true(is.na(my_mean(x)))
})

testthat::test_that("Empty list returns empty vector",
                    expect_length(my_mean(list()), 0))

testthat::test_that("Simplifies a list",{
  x <- list(1:5, rep(1,5), c(1,4,7))
  expect_true(!is.list(my_mean(x)))}
  )


