class Food < Menu
  attr_accessor :calorie
  def initialize(name, price, calorie)
    super(name, price)
    @calorie = calorie
  end

  def info
    "#{@name} $#{@price} (#{@calorie}kcal)"
  end
end