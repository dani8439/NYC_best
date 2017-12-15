class InvalidType < StandardError; end

class Cuisine
  attr_accessor :name
  # attr_reader :restaurants

  def initialize
    @restaurants = []
  end

  def restaurants
    @restaurants.dup.freeze
  end

  def add_restaurant(restaurant)
    if !restaurant.is_a?(Restaurant)
      raise InvalidType, "must be a Restaurant"
    else
      @restaurants << restaurant
    end
  end

  def first_restaurant_name
    # restaurants is an array
    # first element in that array must respond to name method
    self.restaurants.first.name
  end


end
