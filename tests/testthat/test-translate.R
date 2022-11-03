test_that("translate works", {
  test_phrase1 <- "Mama always said life was like a box of chocolates. You never know what you\'re gonna get."
  expected_results <- "Mama always said life be like a barrel o' chocolates. Ye nary know what you be gonna get."
  expect_equal(
    translate(test_phrase1),
    expected_results
  )
  expect_type(translate(test_phrase1)[1], "character")
  expect_error(translate())
})
