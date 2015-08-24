def weather(type)
  begin
    puts "Today the weather is " + type
  rescue
    puts "Sorry, I didn't understand that weather type!"
  end
end

weather("rainy")
weather("sunny")
weather(1)
