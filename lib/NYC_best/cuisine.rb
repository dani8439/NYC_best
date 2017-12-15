class InvalidType < StandardError; end

class Cuisine
  attr_accessor :style
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



end
