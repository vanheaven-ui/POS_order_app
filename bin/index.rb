require_relative '../lib/welcome.rb'
require_relative '../lib/drink.rb'
require_relative '../lib/food.rb'
require_relative '../lib/menu.rb'

food1 = Food.new('Sushi', 10, 700)
food2 = Food.new('Pizza', 8, 600)
food3 = Food.new('Sharwama', 15, 800)
drink1 = Drink.new('Tea', 3, 500)
drink2 = Drink.new('Coke', 2, 400)
drink3 = Drink.new('Juice', 4, 300)

menus = [food1, food2, food3, drink1, drink2, drink3]
cart = []

Welcome.welcome
puts "Checkout today's menu"
puts "\n"
puts "#{Time.now}"
puts "\n"
sleep(1)
menus.each.with_index { |menu, i| puts "   #{i} .#{menu.info}" }
puts "\n"
puts "-----Place Order------"
# loop until index input is valid
# prompt user for index matching item of choice
# validate index is an integer using Integer() method
# Handle exception using rescue
# validate index matches menu using (0...menus.size)
# if index is valid, push menu item name into array variable cart
# prompt user to choose another item(add item to cart)
# valid that response is y or n for user to confirm decision
# if yes validate input using upper loop while adding select items to cart array
# loop until user says no
# display cart as array to user
# ask user if the would like to dicard items from cart
# loop until response is no
# display cart with remaining items to user
# enumerate the cart array and keep count of same items in cart array
# compute the total cost of each item
puts '--------Your Receipt---------'
# display the count of each item and the total cost of the count
# display total cost of the order summing up the individual costs of each cart item

puts 'Thank you !!!  See you again'
puts 'How many stars for service?'
feedback = Integer(gets) rescue nil
puts "*" * feedback


