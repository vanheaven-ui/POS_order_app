module User
  VALUE = %w[y n].freeze
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
      puts 'Kindly enter your awesome name in full to proceed' unless name.size >= 3

      confirm = false if name.size >= 3
    end
    puts "Glad to have you #{name}"
  end

  def self.confirm
    check = true
    while check
      $response = gets.chomp.downcase
      puts 'Enter y or n to confirm' unless VALUE.include? $response

      check = false if VALUE.include? $response
    end
  end

  def self.remove(order)
    remove = true
    while remove
      $discard = gets.chomp.capitalize
      puts "#{$discard} does not match entry in your cart, enter again" unless order.include?($discard)

      remove = false if order.include?($discard)
    end
  end
end
