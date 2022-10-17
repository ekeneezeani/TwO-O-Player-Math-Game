require "./Question"

class Game
  

  def self.start_game
    while (true)
      question = Question.new("4+4", 8)
      puts question.question
      answer = gets.chomp.to_i
      if(answer == question.answer)
        puts "  Correc!"
        break
      end
    end
  end
end

Game.start_game