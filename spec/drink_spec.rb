require_relative '../lib/drink.rb'

describe Drink do
  subject{ Drink.new('Tea', 3, 500) }

  describe '#info' do
    it 'returns the menu drink (name, price, and volume)' do
      expect(subject.info).to eql('Tea $3 (500mL)')
    end
  end
end