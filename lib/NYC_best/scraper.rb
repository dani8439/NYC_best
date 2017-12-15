# 1. Need a NYCBestScraper class
# 2. That class needs to instantiate the restaurants for that cuisine
# 3. We need to scrape the restaurants of that cuisine
# 4. We need to scrape the individual restaurants of that cuisine and add them to that instance


class NYCBestScraper

  def initialize(name)
    @cuisine = Cuisine.new
    @cuisine.restaurant = restaurant
    @doc = Nokogiri::HTML(open("https://www.zagat.com/l/best-#{name}-in-nyc"))
  end

end
