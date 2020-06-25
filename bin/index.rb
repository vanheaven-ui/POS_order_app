require_relative '../lib/welcome.rb'
require_relative '../lib/menu.rb'

food1 = Food.new('Sushi', 10)
food2 = Food.new('Pizza', 8)
food3 = Food.new('Sharwama', 15)
drink1 = Drink.new('Tea', 3)
drink2 = Drink.new('Coke', 2)
drink3 = Drink.new('Juice', 4)

menus = [food1, food2, food3, drink1, drink2, drink3]

Welcome.welcome
puts "Checkout today's menu"
menus.each.with_index { |menu, i| puts "#{i} .#{menu.info}" }

