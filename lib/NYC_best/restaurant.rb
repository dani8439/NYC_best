class NYCBest::Restaurant
  attr_accessor :name, :location, :price, :rating, :review, :recommended_dishes, :url

  def self.list
    restaurant_1 = self.new
    restaurant_1.name = "Juliana's"
    restaurant_1.location = "Dumbo"
    restaurant_1.price = "$$"
    restaurant_1.rating = "4.7 stars"
    
    restaurant_2 = self.new
    restaurant_2.name = "Emily"
    restaurant_2.location = "Clinton Hill"
    restaurant_2.price = "$$"
    restaurant_2.rating = "4.7 stars"

    restaurant_3 = self.new
    restaurant_3.name = "Lucali"
    restaurant_3.location = "Carroll Gardens"
    restaurant_3.price = "$$"
    restaurant_3.rating = "4.7 stars"

    restaurant_4 = self.new
    restaurant_4.name = "San Matteo Pizza Espresso Bar"
    restaurant_4.location = "Pizza Espresso Bar"
    restaurant_4.price = "$$"
    restaurant_4.rating = "4.6 stars"

    restaurant_5 = self.new
    restaurant_5.name = "Roberta's"
    restaurant_5.location = "Bushwick"
    restaurant_5.price = "$$"
    restaurant_5.rating = "4.6 stars"

    restaurant_6 = self.new
    restaurant_6.name = "Paulie Gee's"
    restaurant_6.location = "Greenpoint"
    restaurant_6.price = "$$"
    restaurant_6.rating = "4.6 stars"

    restaurant_7 = self.new
    restaurant_7.name = "DI Fara Pizza"
    restaurant_7.location = "Midwood"
    restaurant_7.price = "$$"
    restaurant_7.rating = "4.6 stars"

    restaurant_8 = self.new
    restaurant_8.name = "Rubirosa Ristorante"
    restaurant_8.location = "NoLita"
    restaurant_8.price = "$$"
    restaurant_8.rating = "4.5 stars"

    # puts "1. Juliana's - Dumbo - $$ - 4.7 stars"
    # puts "2. Emily - Brooklyn - Clinton Hill - $$ - 4.7 stars"
    # puts "3. Lucali - Carroll Gardens - $$ - 4.7 stars"
    # puts "4. San Matteo Pizza Espresso Bar - East 80s - $$ - 4.6 stars"
    # puts "5. Roberta's - Bushwick - $$ - 4.6 stars"
    # puts "6. Paulie Gee's - Greenpoint - $$ - 4.6 stars"
    # puts "7. DI Fara Pizza - Midwood - $$ - 4.6 stars"
    # puts "8. Rubirosa Ristorante - NoLita - $$ - 4.5 stars"

    [restaurant_1, restaurant_2, restaurant_3, restaurant_4, restaurant_5, restaurant_6, restaurant_7]
  end

end
