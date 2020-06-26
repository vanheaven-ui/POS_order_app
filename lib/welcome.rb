module Welcome
  def Welcome.welcome
    puts 'Hey! Welcome to food haven'
    puts 'Care to share your name'
    puts "Glad to have you #{gets.chomp.capitalize}"
    puts "\n"
  end

  def validate(input)
  end
end