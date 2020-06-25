require 'date'

class Menu
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def info
    "#{@name} $#{price}."
  end

  def get_total_price(count)
    total_price = @price * count
    if Menu.discount_day? && count >= 1
      total_price -= 1
    end
    total_price
  end

  def Menu.discount_day?
    today = Date.today
    today.wednesday?
  end
end

# menu1 = Menu.new('Sushi', 10)
# puts menu1.get_total_price(3)