class NYCBest::Restaurant
  attr_accessor :name, :neighborhood, :price_level, :rating, :review, :recommended_dishes, :url

  def self.today
    puts "1. Juliana's - Dumbo - $$ - 4.7 stars"
    puts "2. Emily - Brooklyn - Clinton Hill - $$ - 4.7 stars"
    puts "3. Lucali - Carroll Gardens - $$ - 4.7 stars"
    puts "4. San Matteo Pizza Espresso Bar - East 80s - $$ - 4.6 stars"
    puts "5. Roberta's - Bushwick - $$ - 4.6 stars"
    puts "6. Paulie Gee's - Greenpoint - $$ - 4.6 stars"
    puts "7. DI Fara Pizza - Midwood - $$ - 4.6 stars"
    puts "8. Rubirosa Ristorante - NoLita - $$ - 4.5 stars"
  end

end
