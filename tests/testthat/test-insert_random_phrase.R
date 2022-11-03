test_that("insert_random_phrase adds random pirate phrase into sentence vector", {
  test_input1 <- c("Okay, what is this?", "I think I understand!")
  expect_length( insert_random_phrase(test_input1), 3)
  expect_type( insert_random_phrase(test_input1)[1], "character")
  test_input2 <- c("Last one. Let's try this.")
  expect_length( insert_random_phrase(test_input2), 2)
})
