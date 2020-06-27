require_relative '../lib/user.rb'
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
options = (0...menus.size)
value = %w[y n]

User.welcome
puts "Checkout today's menu"
puts "\n"
puts "#{Time.now}"
puts "\n"
sleep(1)
menus.each.with_index { |menu, i| puts "   #{i} .#{menu.info}" }
puts "\n"
puts '-----Place Order------'
puts 'Discount of $1 is on wednesdays'
puts "\n"
loop do
  valid = true
  while valid
    puts 'Enter index matching your menu item:'
    choice = Integer(gets) rescue nil
    puts 'Invalid input' unless options.include? choice

    valid = false if options.include? choice
  end
  cart << menus[choice].name
  puts "Your order includes: #{cart}"
  puts 'Add items? (y/n)'
  confirm = true
  while confirm
    response = gets.chomp.downcase
    puts 'Enter y or n to confirm' unless value.include? response

    confirm = false if value.include? response
  end
  break if response == 'n'
end
puts "Your order includes: #{cart}"
loop do
  puts 'Remove item? (y/n)'
  confirm = true
  while confirm
    response = gets.chomp.downcase
    puts 'Enter y or n to confirm' unless value.include? response

    confirm = false if value.include? response
  end
  break unless response == 'y'

  puts 'Enter item to remove'
  discard = gets.chomp.capitalize
  cart.slice!(cart.index(discard))
  puts "Your order includes #{cart}"
end


 
# ask user if the would like to dicard items from cart
# loop until response is no
# display cart with remaining items to user
# enumerate the cart array and keep count of same items in cart array
# compute the total cost of each item
puts '--------Your Receipt---------'
# display the count of each item and the total cost of the count
# display total cost of the order summing up the individual costs of each cart item

puts 'Thank you !!!  See you again'
puts 'Enter number of stars to rate service'
feedback = Integer(gets) rescue nil
stars =  "*" * feedback
stars = "*" * 5 if feedback > 5
puts "Thank you for #{stars} rating" if feedback >= 4
puts "Thank you!!! for #{stars}. We shall do better next time" if feedback < 4




