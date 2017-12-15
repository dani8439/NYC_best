class Cuisine
  attr_accessor :restaurants, :name

  def first_restaurant_name
    # restaurants is an array
    # first element in that array must respond to name method
    self.restaurants.first.name
  end


end
