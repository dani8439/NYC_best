# # c_pizza = NYCBestScraper.new("pizza")
# # c_pizza.restaurants.first.name #=> "Juliana's"
#
# # 1. Need a NYCBestScraper class
# # 2. That class needs to instantiate the restaurants for that cuisine
# # 3. We need to scrape the restaurants of that cuisine
# # 4. We need to scrape the individual restaurants of that cuisine and add them to that instance
#
#
class RestaurantScraper
  attr_accessor :cuisine, :doc

  def initialize(type)
    @cuisine = Cuisine.new
    @cuisine.type = type
    # @doc = Nokogiri::HTML(open("https://www.zagat.com/l/best-#{style}-in-nyc"))
    @doc = Nokogiri::HTML(open("https://www.zagat.com/citys-best/new-york-city#the-essentials"))
  end

  def scrape
    scrape_details
    @cuisine #=> This instance should have a bunch of types and restaurants
  end

  def scrape_restaurants
    cuisine = []
    # populate @cuisine with types from webpage categories
    @doc = Nokogiri::HTML(open("https://www.zagat.com/citys-best/new-york-city#the-essentials"))
    @doc.search(".zgt-city-guide-cuisine").each do |a|
      style = NYCBest::Cuisine.new
      cuisine.type = a.search("div.label-score.zgt-city-guide-cuisine-name").text
      cuisine << style
    end
    cuisine
  end

end
