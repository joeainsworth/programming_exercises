sentence = "Humpty Dumpty sat on a wall."

words = sentence.split(/\W/)
words.reverse!
sentence = words.join(" ") + '.'
