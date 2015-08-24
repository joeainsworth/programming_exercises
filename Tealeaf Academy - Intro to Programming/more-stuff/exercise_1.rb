words = ['laboratory', 'experiment', 'Pans Labyrinth',
                            'elaborate', 'polar bear']

words.each do |word|
  if word.match('lab') # or word =~ /lab/
    puts word
  end
end
