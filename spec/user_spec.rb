require_relative '../lib/user.rb'

describe User do
  describe '.validate' do
    context 'User to enter full name' do
      it 'returns kindly enter your awesome name in full to proceed' do
        expect(User.validate('Ez')).to eql('Enter your awesome name to proceed')
      end
      it 'returns Glad to have you <capitalized name>' do
        expect(User.validate('Ezekiel')).to eql('Glad to have you Ezekiel')
      end
    end
  end
end