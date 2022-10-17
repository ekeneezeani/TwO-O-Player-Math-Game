class Question
  def initialize
    random = Random.new
    @num1 = random.rand(1...45)
    @num2 = random.rand(1...45)
  end

  def question 
    "what does #{@num1} plus #{@num2} equal?"
  end

  def is_correct_answer?(num)
    return (@num1 + @num2) == num
  end

end

