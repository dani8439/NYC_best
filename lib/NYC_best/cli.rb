class NYCBest::CLI

  def call
    puts "Welcome to NYC Best Pizza!"
    puts "----------------------------"
    sleep(1)
    # list_cuisines
    list_restaurants
    menu
    goodbye
  end

  def list_restaurants
    # puts "1. Juliana's - Dumbo - $$ - 4.7 stars"
    # puts "2. Emily - Brooklyn - Clinton Hill - $$ - 4.7 stars"
    # puts "3. Lucali - Carroll Gardens - $$ - 4.7 stars"
    # puts "4. San Matteo Pizza Espresso Bar - East 80s - $$ - 4.6 stars"
    # puts "5. Roberta's - Bushwick - $$ - 4.6 stars"
    # puts "6. Paulie Gee's - Greenpoint - $$ - 4.6 stars"
    # puts "7. DI Fara Pizza - Midwood - $$ - 4.6 stars"
    # puts "8. Rubirosa Ristorante - NoLita - $$ - 4.5 stars"
    @restaurants = NYCBest::Restaurant.today
  end

  def menu
    input = nil
    while input != "exit"
      puts "Please enter the number of the restaurant you are interested in, or type list to see choices, or type exit."
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on Juliana's"
      when "2"
        puts "More info on Emily's"
      when "3"
        puts "More info on Lucali"
      when "4"
        puts "More info on San Matteo Pizza Espresso Bar"
      when "5"
        puts "More info on Roberta's"
      when "6"
        puts "More info on Paulie Gee's"
      when "7"
        puts "More info on DI Fara Pizza"
      when "8"
        puts "More info on Rubirosa Ristorante "
      when "list"
        list_restaurants
      else
        puts "Not sure what you want, type list or exit."
      end
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

  def goodbye
    puts "See you when you're hungry!"
  end

end
