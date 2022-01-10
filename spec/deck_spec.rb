require './lib/deck'
require './lib/card'

RSpec.describe Deck do
  before(:each) do
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  end
  describe '#initialize' do
    it 'exists' do
      deck = Deck.new([@card, @card, @card])
      expect(deck).to be_instance_of(Deck)
    end

    it 'has cards' do
      deck = Deck.new([@card, @card, @card])
      deck.cards.each { |card| expect(card).to be_a Card}
    end

    it 'has counts' do
      deck = Deck.new([@card, @card, @card])
      expect(deck.count).to eq deck.cards.length()
    end
  end

  before(:each) do
    @card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @deck = Deck.new([@card1, @card2, @card3])
  end
  describe '#cards_in_category' do
    it 'returns STEM categories' do
      cards = @deck.cards_in_category(:STEM)
      cards.each { |card| expect(card.category).to eq :STEM}
    end

    it 'returns STEM categories' do
      cards = @deck.cards_in_category(:Geography)
      cards.each { |card| expect(card.category).to eq :Geography}
    end

    it 'returns STEM categories' do
      cards = @deck.cards_in_category("Pop Culture")
      cards.each { |card| expect(card.category).to be_falsey}
    end

  end

end
