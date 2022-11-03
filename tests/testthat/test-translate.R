test_that("translate converts english to pirate speak", {
  test_phrase1 <- "Mama always said life was like a box of chocolates. You never know what you\'re gonna get."
  expected_results <- "Mama always said life be like a barrel o' chocolates. Ye nary know what you be gonna get."
  expect_equal(
    translate(test_phrase1, add_random = FALSE),
    expected_results
  )
  expect_type(translate(test_phrase1, add_random = FALSE)[1], "character")
  expect_type(translate(test_phrase1, add_random = TRUE)[1], "character")
  expect_error(translate())
})
