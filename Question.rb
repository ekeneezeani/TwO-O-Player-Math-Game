class Question
  attr_accessor :question, :answer
  def initialize(question, answer)
    @question = question
    @answer = answer
  end

  def correct_answer?(answer)
    @answer == answer
  end
end