# Starting with the string:
famous_words = "and seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.
famous_words = "Four score and " + famous_words
famous_words.insert(0, "Four score and ")
famous_words.prepend("Four score and ")
