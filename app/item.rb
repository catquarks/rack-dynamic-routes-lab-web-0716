class Item
  attr_accessor :name, :price

	@@all_names = []
	@@all_prices = []


  def self.all_names
  	@@all_names
  end

  def self.all_prices
  	@@all_prices
  end

  def initialize(name,price)


    @name = name
    @price = price
    self.class.all_names << @name
    self.class.all_prices << @price
  end
end
