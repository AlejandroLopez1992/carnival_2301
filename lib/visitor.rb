class Visitor
  
  attr_reader :name,
              :height,
              :preferences

  attr_accessor :spending_money

  def initialize(name, height, spending_money)
    @name = name
    @height = height
    @spending_money = spending_money.delete_prefix("$").to_i
    @preferences = []
  end

  def add_preference(preferance)
    @preferences << preferance
  end

  def tall_enough?(needed_height)
    @height >= needed_height
  end
end
