# Test testing helper functions.
context("aux")

test_that("auxiliary test functions behave as expected", {
  ps = makeParamSet(makeLogicalParam("a"), makeLogicalParam("b",
          requires = quote(a==TRUE)))
  expect_true(isFeasibleMissingPossible(ps, list(a = TRUE)))
  expect_false(isFeasibleNoneMissing(ps, list(a = TRUE)))
  expect_true(isFeasibleNoneMissing(ps, list(a = TRUE, b = FALSE)))
  expect_false(isFeasibleNoneMissing(ps, list(a = FALSE, b = FALSE)))
  expect_false(isFeasibleNoneMissing(ps, list(b = FALSE)))
  expect_true(isFeasibleNoneMissing(ps, list(a = FALSE)))
})
