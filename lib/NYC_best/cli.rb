class NYCBest::CLI

  def call
    puts "Welcome to NYC Best Pizza!"
    puts "----------------------------"
    sleep(1)
    list_cuisines
    menu
    goodbye
  end

  def list_cuisines
    cuisines = ["Brooklyn Pizza Delivery", "Manhattan Pizza Delivery", "NYC Pizza"]
    # cuisines = ["Brooklyn Pizza", "Manhattan Pizza", "Steakhouse", "Indian", "Italian", "Mexican", "Seafood", "French", "Thai", "Barbecue", "Burger", "NYC Pizza", "Chinese", "American"]
    cuisines.each.with_index(1) do |style, i|
      puts "#{i}. #{style}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Please enter the number of the pizza you would like more info on, or type list to see choices again, or type exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "(brooklyn_restaurants)"
      when "2"
        puts "(manhattan_restaurants)"
      when "3"
        puts "(nyc_restaurants)"
      when "list"
        list_cuisines
      end
    end
  end

  def goodbye
    puts "See you when you're hungry!"
  end

end
