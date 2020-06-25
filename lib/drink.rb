require_relative './menu.rb'

class Drink < Menu
  attr_accessor :volume

  def initialize(name, price, volume)
    super(name, price)
    @volume = volume
  end

  def info
    "#{@name} $#{price} (#{volume}mL)"
  end
end