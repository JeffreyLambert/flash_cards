class Deck
  attr_reader :cards,
              :count

  def initialize(cards)
    @cards = cards
    @count = cards.length()
  end

  def cards_in_category(category)
    cards_in_category = []
    @cards.each do |card|
      if card.category == category
        cards_in_category << card
      end
      return cards_in_category
    end
  end
end
