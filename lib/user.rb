module User 
  def self.welcome
    puts 'Hey! Welcome to food haven'
    puts 'Care to share your name'
    User.validate
    puts "\n"
  end

  def self.validate(name)
    confirm = true
    while confirm
      name = gets.chomp.capitalize
      puts 'Kindly enter your awesome name to proceed' unless name.size >= 3

      confirm = false if name.size >= 3
    end
    puts "Glad to have you #{name}"
  end
end

User.name