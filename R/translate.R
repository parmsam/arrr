#' @title Split text into sentences
#' @description `split_to_sentence()` splits a text into a vector of sentences
#' @param text input text with sentences
#' @return vector of split sentences
#' @details uses regex lookbehind to see if there is punctuation before split
#' @examples
#' split_to_sentence("Okay, here's sentence 1. Here's another.")
#' @export
#' @importFrom stringr str_split
split_to_sentence <- function(text) {
  sentences <- text %>%
    stringr::str_split("(?<=[.!?:])[[:space:]]+") %>%
    .[[1]]
  return(sentences)
}

#' @title Insert a random phrase into your vector of sentences
#' @description inserts random phrase
#' @param split_sentences vector of individual sentences
#' @param phrases tibble of phrases with a phrase column
#'  Default: pirate_phrases
#' @return vector of sentences with a random phrase inserted at some position
#' @examples
#' insert_random_phrase(c("Okay here's sentence 1.", "Here's sentence two"))
#' @export
#' @importFrom dplyr pull
#' @importFrom stringr str_replace
insert_random_phrase <- function(split_sentences,
                                 phrases = pirate_phrases) {
  rand_phrase <- phrases %>%
    dplyr::pull(phrase) %>%
    sample(1) %>%
    stringr::str_replace("^\\w", toupper)
  insert_position <- sample(1:length(split_sentences), 1)
  enhanced_sentence <- append(split_sentences, rand_phrase, after = insert_position)
  return(enhanced_sentence)
}

#' @title Translate your English to pirate speak
#' @description `translate()` converts your plain English over to what a
#' pirate would say.
#' @param english_sentence A string with your sentence(s) in English.
#' @param add_random A boolean that indicates whether you want a
#' random pirate phrase added into your pirate speak.
#' There is about a 1/5 chance of random pirate phrase being added
#' with this option. The default value of `add_random` is TRUE.
#' @return A string with your sentences in pirate speak.
#' @examples
#' ## basic example code
#' translate("Well, hello there, sir! How can I help you?")
#' @export
#' @importFrom stringr str_to_lower str_split str_replace str_remove_all str_c
#' @importFrom dplyr left_join mutate pull sample_n row_number
#' @importFrom tibble tibble
#' @importFrom tidyr nest unnest
#' @importFrom purrr map
translate <- function(english_sentence, add_random = TRUE) {
  # split and lowercase words in sentence
  split_words <- english_sentence %>%
    stringr::str_split("\\s+|(?=[.!?:,])") %>%
    .[[1]]

  # create a tibble with sentence words
  # join it with the pirate words lookup table
  pirate_table <- tibble::tibble(orig = split_words) %>%
    dplyr::mutate(lower = stringr::str_to_lower(orig)) %>%
    dplyr::mutate(case_change = orig != lower) %>%
    dplyr::mutate(row = dplyr::row_number(), .before = orig) %>%
    # join on pirate word lookup table
    dplyr::left_join(pirate_lookup, by = c("lower"="orig")) %>%
    # see if merge gave us a pirate word
    dplyr::mutate(in_lookup_table = ifelse(is.na(new), FALSE, TRUE)) %>%
    # if word is not in lookup table then just replace it with original word
    dplyr::mutate(new = ifelse(in_lookup_table == FALSE, orig, new)) %>%
    tidyr::nest(data = new) %>%
    dplyr::mutate(data = purrr::map(data, dplyr::sample_n, size = 1)) %>%
    tidyr::unnest(data)

  pirate_words <- pirate_table %>%
    dplyr::pull(new)

    # piratify the sentence
  pirate_english <- pirate_words %>%
    stringr::str_c(collapse = " ") %>%
    # split pirate text into sentences
    split_to_sentence() %>%
    # capitalize first letter of each sentence
    stringr::str_replace("^\\w", toupper) %>%
    # remove any spaces before punctuation marks
    stringr::str_remove_all("[[:space:]]*(?=[.!?:,])") %>%
    stringr::str_c(collapse = " ")

  # make it more piratey
  # 1/5 chance of a pirate phrase insert
  if (add_random == TRUE) {
    if (sample(0:5, 1) == 0) {
      pirate_english <- pirate_english %>%
        split_to_sentence() %>%
        insert_random_phrase(phrases = pirate_phrases) %>%
        stringr::str_c(collapse = " ")
    }
  }

  return(pirate_english)
}
