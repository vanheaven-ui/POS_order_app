module User 
VALUE = %w[y n]
  def User.welcome
    puts 'Hey! Welcome to food haven'
    puts 'Care to share your name'
    puts "Glad to have you #{gets.chomp.capitalize}"
    puts "\n"
  end

  def User.validate(input)
    confirm = true
    while confirm
      puts 'Please enter y or n to confirm' unless VALUE.include? input

      break
    end
  end
end