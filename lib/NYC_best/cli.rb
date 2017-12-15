class NYCBest::CLI

  def call
    puts "Choose your cuisine:"
    list_cuisines
  end

  def list_cuisines
    cuisines = ["Brooklyn Pizza", "Manhattan Pizza", "Steakhouse", "Indian", "Italian", "Mexican", "Seafood", "French", "Thai", "Barbecue", "Burger", "NYC Pizza", "Chinese", "American"]
    cuisines.each.with_index(1) do |style, i|
      puts "#{i}. #{style}"
    end
  end

end
