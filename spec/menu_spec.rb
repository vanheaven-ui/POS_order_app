require_relative '../lib/menu.rb'

describe Menu do
  subject{ Menu.new('Sushi', 10) }

  describe '#info' do
    it 'returns the menu name and menu price' do
      expect(subject.info).to eql('Sushi $10.')
    end
  end

  describe '#get_total_price' do
    it 'returns the total price of chosen menu items' do
      expect(subject.get_total_price(3)).to eql(30)
    end
  end

  describe '.discount_day?' do
    it 'returns true if today is wednesday' do
      expect(Menu.discount_day?).to eql(true) if Date.today.wednesday?
    end
  end
end