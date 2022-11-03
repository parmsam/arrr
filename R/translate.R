# pirate words lookup table
pirate_lookup <- tibble::tribble(
  ~orig, ~new,
  "address", "port o' call",
  "admin", "helm",
  "am", "be",
  "an", "a",
  "and", "n'",
  "are", "be",
  "award", "prize",
  "bathroom", "head",
  "beer", "grog",
  "before", "afore",
  "belief", "creed",
  "between", "betwixt",
  "big", "vast",
  "bill", "coin",
  "bills", "coins",
  "boss", "admiral",
  "bourbon", "rum",
  "box", "barrel",
  "boy", "lad",
  "buddy", "mate",
  "business", "company",
  "businesses", "companies",
  "calling", "callin'",
  "canada", "Great North",
  "cash", "coin",
  "cat", "parrot",
  "cheat", "hornswaggle",
  "comes", "hails",
  "comments", "yer words",
  "cool", "shipshape",
  "country", "land",
  "dashboard", "shanty",
  "dead", "in Davy Jones's Locker",
  "disconnect", "keelhaul",
  "do", "d'",
  "dog", "parrot",
  "dollar", "doubloon",
  "dollars", "doubloons",
  "dude", "pirate",
  "employee", "crew",
  "everyone", "all hands",
  "eye", "eye-patch",
  "family", "kin",
  "fee", "debt",
  "female", "wench",
  "females", "wenches",
  "food", "grub",
  "for", "fer",
  "friend", "mate",
  "friend", "shipmate",
  "friends", "crew",
  "fuck", "shiver me timbers",
  "gin", "rum",
  "girl", "lass",
  "girls", "lassies",
  "go", "sail",
  "good", "jolly good",
  "grave", "Davy Jones's Locker",
  "group", "maties",
  "gun", "bluderbuss",
  "haha", "yo ho",
  "hahaha", "yo ho ho",
  "hahahaha", "yo ho ho ho",
  "hand", "hook",
  "happy", "grog-filled",
  "hello", "ahoy",
  "hey", "ahoy",
  "hi", "ahoy",
  "hotel", "fleebag inn",
  "i", "me",
  "i'm", "i be",
  "internet", "series o' tubes",
  "invalid", "sunk",
  "is", "be",
  "island", "isle",
  "isn't", "be not",
  "it's", "'tis",
  "jail", "brig",
  "kill", "keelhaul",
  "king", "king",
  "ladies", "lasses",
  "lady", "lass",
  "lawyer", "scurvy land lubber",
  "left", "port",
  "leg", "peg",
  "logout", "walk the plank",
  "lol", "blimey",
  "male", "pirate",
  "man", "pirate",
  "manager", "admiral",
  "money", "doubloons",
  "month", "moon",
  "my", "me",
  "never", "nary",
  "no", "nay",
  "not", "nay",
  "of", "o'",
  "old", "barnacle-covered",
  "omg", "shiver me timbers",
  "over", "o'er",
  "page", "parchment",
  "people", "scallywags",
  "person", "scurvy dog",
  "posted", "tacked to the yardarm",
  "president", "king",
  "prison", "brig",
  "quickly", "smartly",
  "really", "verily",
  "relative", "kin",
  "relatives", "kin",
  "religion", "creed",
  "restaurant", "galley",
  "right", "starboard",
  "rotf", "rollin' on the decks",
  "say", "cry",
  "seconds", "ticks o' tha clock",
  "shipping", "cargo",
  "shit", "shiver me timbers",
  "small", "puny",
  "snack", "grub",
  "soldier", "sailor",
  "sorry", "yarr",
  "spouse", "ball 'n' chain",
  "state", "land",
  "supervisor", "Cap'n",
  "that's", "that be",
  "the", "thar",
  "theif", "swoggler",
  "them", "'em",
  "this", "dis",
  "to", "t'",
  "together", "t'gether",
  "treasure", "booty",
  "vodka", "rum",
  "was", "be",
  "water", "grog",
  "we", "our jolly crew",
  "we're", "we's",
  "whiskey", "rum",
  "whisky", "rum",
  "wine", "grog",
  "with", "wit'",
  "woman", "comely wench",
  "women", "beauties",
  "work", "duty",
  "yah", "aye",
  "yeah", "aye",
  "yes", "aye",
  "you", "ye",
  "you're", "you be",
  "you've", "ye",
  "your", "yer",
  "yup", "aye",
  "hello", "ahoy",
  "hi", "arrr",
  "my", "me",
  "friend", "m'hearty",
  "boy", "laddy",
  "girl", "lassie",
  "sir", "matey",
  "miss", "proud beauty",
  "stranger", "scurvy dog",
  "boss", "foul blaggart",
  "where", "whar",
  "is", "be",
  "the", "th'",
  "you", "ye",
  "old", "barnacle covered",
  "happy", "grog-filled",
  "nearby", "broadside",
  "bathroom", "head",
  "kitchen", "galley",
  "pub", "fleabag inn",
  "stop", "avast",
  "yes", "aye",
  "no", "nay",
  "yay", "yo-ho-ho",
  "money", "doubloons",
  "treasure", "booty",
  "strong", "heave-ho",
  "take", "pillage",
  "drink", "grog",
  "idiot", "scallywag",
  "sea", "briney deep",
  "vote", "mutiny",
  "song", "shanty",
  "drunk", "three sheets to the wind",
  "lol", "yo ho ho",
  "talk", "parley",
  "fail", "scupper",
  "quickly", "smartly",
  "captain", "cap",
  "meeting", "parley with rum and cap"
) %>% unique()

pirate_phrases <- c(
  "batten down the hatches!",
  "splice the mainbrace!",
  "thar she blows!",
  "arrr!",
  "weigh anchor and hoist the mizzen!",
  "savvy?",
  "dead men tell no tales.",
  "cleave him to the brisket!",
  "blimey!",
  "blow me down!",
  "avast ye!",
  "yo ho ho.",
  "shiver me timbers!",
  "blisterin' barnacles!",
  "ye flounderin' nincompoop.",
  "thundering typhoons!",
  "sling yer hook!"
)

# split text into sentences
split_to_sentence <- function(text) {
  sentences <- text %>%
    stringr::str_split("(?<=[.!?:])[[:space:]]+") %>%
    .[[1]]
  return(sentences)
}

# insert a random phrase into your vector of sentences
insert_random_phrase <- function(split_sentences,
                                 phrases = pirate_phrases) {
  rand_phrase <- sample(phrases, 1) %>%
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
      pirate_english <- insert_random_phrase(pirate_english) %>%
        stringr::str_c(collapse = " ")
    }
  }

  return(pirate_english)
}
