# c_pizza = NYCBestScraper.new("pizza")
# c_pizza.restaurants.first.name #=> "Juliana's"

# 1. Need a NYCBestScraper class
# 2. That class needs to instantiate the restaurants for that cuisine
# 3. We need to scrape the restaurants of that cuisine
# 4. We need to scrape the individual restaurants of that cuisine and add them to that instance


class NYCBestScraper
  attr_accessor :cuisine, :doc

  def initialize(style)
    @cuisine = Cuisine.new
    @cuisine.style = style
    @doc = Nokogiri::HTML(open("https://www.zagat.com/l/best-#{style}-in-nyc"))
  end

  def scrape
    scrape_details
    @cuisine #=> This instance should have a bunch of restaurants and details
  end

  def scrape_details

    # populate @cuisine with more data from cuisine's restaurant listings
    @doc.search("span.zgt-basic-facts-title-text").text.each do |restaurant|
      @cuisine.restaurants << restaurant
    end

  end

end
