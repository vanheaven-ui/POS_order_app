require_relative '../lib/food.rb'

describe Food do
  subject{ Food.new('Sushi', 10, 600) }

  describe '#info' do
    it 'returns the menu food (name, price, and calorie content)' do
      expect(subject.info).to eql('Sushi $10 (600kcal)')
    end
  end
  
end