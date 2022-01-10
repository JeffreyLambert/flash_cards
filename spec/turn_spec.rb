require './lib/turn'
require './lib/card'
require 'rspec'

describe Turn do
  before(:each) do
    @card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    @turn = Turn.new("Mercury", @card)
  end
  describe '#initialize' do
    it 'is a turn' do
      expect(@turn).to be_a Turn
    end

    it 'has a guess' do
      expect(@turn.guess).to eq "Mercury"
    end

    it 'has a card' do
      expect(@turn.card).to be_a Card
    end
  end

  describe '#guess' do
    it 'returns true if guess matches answer' do
      expect(@turn.guess).to eq @card.answer
    end

    it 'returns false if guess does not match answer' do
      card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
      turn = Turn.new("Saturn", card)
      expect(turn.guess).not_to eq card.answer
    end
  end

  describe '#feedback' do
    it 'feedback is correct' do
      expect(@turn.feedback).to eq "Correct!"
    end

    it 'feedback is not correct' do
      card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
      turn = Turn.new("Saturn", card)
      expect(turn.feedback).to eq "Incorrect."
    end
  end
end