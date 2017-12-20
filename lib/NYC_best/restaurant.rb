class NYCBest::Restaurant
  attr_accessor :name, :location, :price, :food_rating, :decor_rating, :service_rating, :review, :known_for, :url, :insider_tip

  @@all = []

  def initialize(name = nil, location = nil, known_for = nil, review = nil, url = nil)
    @name = name
    @location = location
    @known_for = known_for
    @review = review
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.list
    #scrape zagat and return list based on that data.
    self.scrape_restaurants
  end

  def self.scrape_restaurants
    #Go to Zagat or thrillist, find the restaurants
    #extract the names
    #instantiate a restaurant with all the details

    # restaurants << self.scrape_zagat
    @@all << self.scrape_thrillist
    @@all
  end

  # def self.scrape_zagat
  #   restaurants = []
  #   @doc = Nokogiri::HTML(open("https://www.zagat.com/l/best-pizza-in-nyc"))
  #   @doc.search("zgt-basic-facts[place='::listPlacecardCtrl.listPlace.getPlace()']").each do |place|
  #     restaurant = NYCBest::Restaurant.new
  #     restaurant.name = place.search("span.zgt-basic-facts-title-text").text
  #     restaurant.location = place.search("span.zgt-basic-facts-neighborhood").text
      # restaurant.price = place.search("").text
  #
  #     restaurants << restaurant
  #   end
  #   restaurants
  # end

  def self.scrape_thrillist
    @doc = Nokogiri::HTML(open("https://www.thrillist.com/eat/new-york/the-best-pizza-in-new-york-city"))
    @doc.search("section.save-venue.saveable-venue.has-spacing.is-standard").each do |place|
      restaurant = NYCBest::Restaurant.new
      restaurant.name = place.search("h1.font--h1.save-venue__title a").text
      restaurant.location = place.search("h2.save-venue__neighborhood.font--h4").text
      restaurant.known_for = place.search("strong").text
      # restaurant.description = place.search("p.font--body.save-venue__description").text
      restaurant.url = place.search("a.save-venue__link").attribute("href").value

      @@all << restaurant
    end
    @@all.uniq!
  end
end

# restaurant_1 = self.new
# restaurant_1.name = "Juliana's"
# restaurant_1.location = "Dumbo"
# restaurant_1.price = "$$"
# restaurant_1.food_rating = "4.7 stars"
# restaurant_1.decor_rating = "3.9 stars"
# restaurant_1.service_rating = "4.2 stars"
# restaurant_1.review = "From “pizza legend” Patsy Grimaldi, this “old-school” joint turns out “premium” pies via a coal oven (“it’s the char!”) in “casual” digs beneath the Brooklyn Bridge; since it “looks like everyone knows”, don’t be surprised to see lines “down the block.”"
# restaurant_1.recommended_dishes = "No. 2 Pizza, White Pizza, Brookie Bridge Ice Cream Sandwich"
# restaurant_1.insider_tip = "Good luck getting in without a wait now that the hordes in line at Grimaldi’s down the block have caught on. But in nice weather you can order your pie to-go and enjoy it – along with the killer harbor views – in nearby Brooklyn Bridge Park."
#
# restaurant_2 = self.new
# restaurant_2.name = "Emily"
# restaurant_2.location = "Clinton Hill"
# restaurant_2.price = "$$"
# restaurant_2.food_rating = "4.7 stars"
# restaurant_2.decor_rating = "3.7 stars"
# restaurant_2.service_rating = "4.2 stars"
# restaurant_2.review = "This “vibrant” pizzeria duo serves “out-of-this-world” Neapolitan pies with “perfectly charred” crusts and “inventive” toppings – though some swear the “killer” (but limited-supply) burger is the real “showstopper”; the Clinton Hill original specializes in rectangular pies, while the West Village outpost offers round too, but both spots are “tight”, so make a reservation or expect “absurdly long” waits."
# restaurant_2.recommended_dishes = nil
# restaurant_2.insider_tip = nil
#
#
# restaurant_3 = self.new
# restaurant_3.name = "Lucali"
# restaurant_3.location = "Carroll Gardens"
# restaurant_3.price = "$$"
# restaurant_3.food_rating = "4.7 stars"
# restaurant_3.decor_rating = "3.9 stars"
# restaurant_3.service_rating = "4.1 stars"
# restaurant_3.review = "It’s “hard to beat” the “ethereal” pizzas and “league-of-their-own” calzones that emerge from the brick oven at this cash-only Carroll Gardens joint; the BYO policy “makes it a great value”, but the trade-off is notoriously “insane waits.”"
# restaurant_3.recommended_dishes = "Pizza Margherita, Calzone"
# restaurant_3.insider_tip = "Waits here are pretty much always bring-a-book long, but at least it’s possible to call ahead and put your name on the list before setting out."
#
# restaurant_4 = self.new
# restaurant_4.name = "San Matteo Pizza Espresso Bar"
# restaurant_4.location = "Pizza Espresso Bar"
# restaurant_4.price = "$$"
# restaurant_4.food_rating = "4.6 stars"
# restaurant_4.decor_rating = "3.4 stars"
# restaurant_4.service_rating = "4.1 stars"
# restaurant_4.review = "Bite into the “first-rate”, “real-deal” Neapolitan pies or “unusual” panuozzi (sandwiches) at these “popular” Upper Eastsiders, and “you’re in Italy”; tables are “few” in the “tiny”, “basic” flagship, but the “expanded” East 80s outpost boasts a “lovely upstairs” space with a “fun vibe.”"
# restaurant_4.recommended_dishes = nil
# restaurant_4.insider_tip = nil
#
#
# restaurant_5 = self.new
# restaurant_5.name = "Roberta's"
# restaurant_5.location = "Bushwick"
# restaurant_5.price = "$$"
# restaurant_5.food_rating = "4.6 stars"
# restaurant_5.decor_rating = "3.8 stars"
# restaurant_5.service_rating = "3.9 stars"
# restaurant_5.review = "“Legendary” by now, this “hipster-chic” Bushwick destination is a “real standout” thanks to “expertly crafted” pizzas (try the “out-of-this-world” bee sting) and “equally amazing” Italian dishes, enhanced by homegrown produce; perpetual “crowds” make for “massive” waits, but once you're in it's “loads of fun.”"
# restaurant_5.recommended_dishes = "Duck prosciutto, Famous Original Pizza, Rye & Gosling cocktail"
# restaurant_5.insider_tip = "The wait is bound to be epically long, so while it away in the backyard bar – which is open year-round thanks to the tent and heating lamps."
#
# restaurant_6 = self.new
# restaurant_6.name = "Paulie Gee's"
# restaurant_6.location = "Greenpoint"
# restaurant_6.price = "$$"
# restaurant_6.food_rating = "4.6 stars"
# restaurant_6.decor_rating = "3.9 stars"
# restaurant_6.service_rating = "4.1 stars"
# restaurant_6.review = "The “crowds” prove the “hype” at this Greenpoint pizzeria where “seriously good” pies (especially the “addictive” Hellboy) are offered with “original” toppings varied enough “to please anyone”; the “dimly lit” digs feel especially “inviting” when Paulie “drops by to say hello.”"
# restaurant_6.recommended_dishes = "Hellboy, Cherry Jones, Regina"
# restaurant_6.insider_tip = "Takeout fans beware: it recently discontinued to-go orders, so prepare to dine-in (and most likely wait for a table)."
#
#
# restaurant_7 = self.new
# restaurant_7.name = "DI Fara Pizza"
# restaurant_7.location = "Midwood"
# restaurant_7.price = "$$"
# restaurant_7.food_rating = "4.6 stars"
# restaurant_7.decor_rating = "2.5 stars"
# restaurant_1.service_rating = "3.0 stars"
# restaurant_7.review = "Pizzaiolo “legend” Dom DeMarco is “a master plying his art” at this 1965 Midwood “institution”, where his “lovingly handmade” pies are “a must for the pizza addicted”; despite “unappealing” digs, “interminable waits” and service with “zero sense of urgency”, it’s “thronged” with those who urge “patience – it’s worth it.”"
# restaurant_7.recommended_dishes = "Plain regular pie, Sicilian Square Pie, Di Fara Classic Pie"
# restaurant_7.insider_tip = "If you want to avoid the long waits, you can call ahead and order a pie to-go."
#
#
# restaurant_8 = self.new
# restaurant_8.name = "Rubirosa Ristorante"
# restaurant_8.location = "NoLita"
# restaurant_8.price = "$$"
# restaurant_8.food_rating = "4.5 stars"
# restaurant_8.decor_rating = "3.8 stars"
# restaurant_8.service_rating = "4.1 stars"
# restaurant_8.review = "“Amazing” thin-crust pizzas and “to-die-for” meatballs are the fortes of this “charming” NoLita Italian done up in “rustic-chic” style; “cozy” turns “tight” during prime times, and it can be “hard to get a table”, but “cool” vibes and “reasonable” tabs compensate."
# restaurant_8.recommended_dishes = "Classic Pizza, Baked Clams, Black and White Tagliatlle"
# restaurant_8.insider_tip = "The pizzeria offers an entire gluten-free menu that includes pies made from GF dough."
#
# [restaurant_1, restaurant_2, restaurant_3, restaurant_4, restaurant_5, restaurant_6, restaurant_7, restaurant_8]

# puts "1. Juliana's - Dumbo - $$ - 4.7 stars"
# puts "2. Emily - Brooklyn - Clinton Hill - $$ - 4.7 stars"
# puts "3. Lucali - Carroll Gardens - $$ - 4.7 stars"
# puts "4. San Matteo Pizza Espresso Bar - East 80s - $$ - 4.6 stars"
# puts "5. Roberta's - Bushwick - $$ - 4.6 stars"
# puts "6. Paulie Gee's - Greenpoint - $$ - 4.6 stars"
# puts "7. DI Fara Pizza - Midwood - $$ - 4.6 stars"
# puts "8. Rubirosa Ristorante - NoLita - $$ - 4.5 stars"
