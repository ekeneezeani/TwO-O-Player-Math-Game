class Question
  attr_accessor :num1
  def initialize
    random = Random.new
    @num1 = random.rand(1...45)
    @num2 = random.rand(1...45)
  end

  def question 
    "what does #{@num1} plus #{@num2} equals"
  end

  def is_correct_answer?(num)
    return (@num1 + @num2) == num
  end

end

# puts Question.create_question

# __test = Question.new
# puts __test.num1
# puts __test.question
# num = gets.chomp.to_i
# puts __test.is_correct_answer?(num)