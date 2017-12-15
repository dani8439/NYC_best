class NYCBest::CLI

  def call
    puts "Welcome to NYC Best Pizza!"
    puts "--------------------------"
    sleep(1)
    # list_cuisines
    list_restaurants
    puts ""
    menu
    goodbye
  end

  def list_restaurants
    @restaurants = NYCBest::Restaurant.list
    @restaurants.each.with_index(1) do |restaurant, i|
      puts "#{i}. #{restaurant.name} - #{restaurant.location} - #{restaurant.price} - #{restaurant.rating}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Please enter the number of the restaurant you are interested in, or type list to see choices, or type exit."
      input = gets.strip.downcase

      if input.to_i > 0
        the_restaurant = @restaurants[input.to_i-1]
        puts ""
        puts "#{the_restaurant.name} - #{the_restaurant.location} - #{the_restaurant.price} - #{the_restaurant.rating}"
        puts "____________________________________________________________________________"
        puts "#{the_restaurant.review}"
        puts "____________________________________________________________________________"
        puts "#{the_restaurant.recommended_dishes}"
        puts "____________________________________________________________________________"
        puts "#{the_restaurant.insider_tip}"
        puts ""
      elsif input == "list"
        list_restaurants
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end


  def goodbye
    puts "See you when you're hungry!"
  end

end

# def list_cuisines
#   cuisines = ["Brooklyn Pizza Delivery", "Manhattan Pizza Delivery", "NYC Pizza"]
#   # cuisines = ["Brooklyn Pizza", "Manhattan Pizza", "Steakhouse", "Indian", "Italian", "Mexican", "Seafood", "French", "Thai", "Barbecue", "Burger", "NYC Pizza", "Chinese", "American"]
#   cuisines.each.with_index(1) do |style, i|
#     puts "#{i}. #{style}"
#   end
# end
#
# def menu
#   input = nil
#   while input != "exit"
#     puts "Please enter the number of the pizza you would like more info on, or type list to see choices again, or type exit:"
#     input = gets.strip.downcase
#     case input
#     when "1"
#       puts "(brooklyn_restaurants)"
#     when "2"
#       puts "(manhattan_restaurants)"
#     when "3"
#       puts "(nyc_restaurants)"
#     when "list"
#       list_cuisines
#     else
#       puts "Not sure what you want, type list or exit."
#     end
#   end
# end
