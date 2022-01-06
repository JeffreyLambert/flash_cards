class Card
  attr_reader :question,
              :answer,
              :category

  # @param [String] question
  # @param [String] answer
  # @param [Symbol] category
  def initialize(question, answer, category)
    @question = question
    @answer = answer
    @category = category
  end
end