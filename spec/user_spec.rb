require_relative '../lib/user.rb'

describe User do
  describe '.validate' do
    context 'User to enter full name' do
      name = gets.chomp.capitalize
      it 'returns enter your awesome name to proceed' do
        expect(User.validate(name)).to eql('Enter your awesome name to proceed')
      end
      it 'returns Glad to have you <capitalized name>' do
        expect(User.validate(name)).to eql('Glad to have you Ezekiel')
      end
    end
  end
end