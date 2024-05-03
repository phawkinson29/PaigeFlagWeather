library(testthat)

test_that("Input is zero", {
  expect_error(FizzBuzz(-1))
})

test_that("Input is negative", {
  expect_error(FizzBuzz(0) )
})

test_that("Input is infinite", {
  expect_error(FizzBuzz(Inf), "Not a number")
})


