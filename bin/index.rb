# bin/index.rb

require_relative '../lib/user.rb'
require_relative '../lib/drink.rb'
require_relative '../lib/food.rb'
require_relative '../lib/menu.rb'

# To refactor this
food1 = Food.new('Sushi', 10, 700)
food2 = Food.new('Pizza', 8, 600)
food3 = Food.new('Sharwama', 15, 800)
drink1 = Drink.new('Tea', 3, 500)
drink2 = Drink.new('Coke', 2, 400)
drink3 = Drink.new('Juice', 4, 300)

menus = [food1, food2, food3, drink1, drink2, drink3]
cart = []
options = (0...menus.size)

User.welcome
puts "Checkout today's menu"
puts "\n"
puts "#{Time.now}"
puts "\n"
sleep(1)
menus.each.with_index { |menu, i| puts "   #{i} .#{menu.info}" }
puts "\n"
puts '-----Place Order------'
puts 'Discount of $1 is on wednesdays' unless Menu.discount_day?

puts 'Today is $1 discount day!!!!!!' if Menu.discount_day?

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
  User.confirm
  break if $response == 'n'
end
puts "Your order includes: #{cart}"
loop do
  puts 'Remove item? (y/n)'
  User.confirm
  break unless $response == 'y'

  puts 'Enter item to remove'
  User.remove(cart)
  cart.slice!(cart.index($discard))
  puts "Your order includes #{cart}"
end
puts '--------Your Receipt---------'
puts "\n"
puts "   #{Time.now}"
puts "\n"
# To refactor this
item1 = 0
item2 = 0
item3 = 0
item4 = 0
item5 = 0 
item6 = 0
cart.each do |item|
  item1 += 1 if item == 'Sushi'
  item2 += 1 if item == 'Pizza'
  item3 += 1 if item == 'Sharwama'
  item4 += 1 if item == 'Tea'
  item5 += 1 if item == 'Coke'
  item6 += 1 if item == 'Juice'
end
counts = [item1, item2, item3, item4, item5]
total_price = 0
verify = %[nil 0]
menus.each.with_index do |menu, i|
  next if verify.include? counts[i].to_s

  puts "   You ordered #{counts[i]} #{menu.name}"
  puts "   The cost is $#{menu.get_total_price(counts[i])}"
  total_price += menu.get_total_price(counts[i])
end
puts "\n"
puts "Total bill is $#{total_price}."
puts "\n"
puts 'Thank you !!!  See you again'
puts 'Enter number of stars to rate service'
loop do
  $feedback = Integer(gets) rescue nil
  puts 'Kindly provide number of stars to rate service' if $feedback.nil?

  break if !$feedback.nil?
end
stars = '*' * $feedback
stars = '0 stars' if $feedback == 0
stars = '*' * 5 if $feedback > 5
puts "Thank you for #{stars} rating" if $feedback >= 4
puts "Thank you!!! for #{stars}. We shall do better next time" if $feedback < 4
