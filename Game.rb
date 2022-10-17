require "./Question"
require "./Player"

class Game

  def initialize(p1,p2)
    @player1 = self.create_Player(p1)
    @player2 = self.create_Player(p2)
    @turn = 0
  end

  def start_game
    while (true)

      if(@player1.lives == 0 || @player2.lives == 0)
       if @player1.lives > 0
        puts "#{@player1.name} wins with  a score of #{@player1.life_remaining}"
        puts ""
       else
        puts "#{@player2.name} wins with  a score of #{@player2.life_remaining}"
        puts ""
       end
        break
      end

      new_question = Question.new
      currentPlayer = self.player_turn
      puts "#{currentPlayer.name}: #{new_question.question}?"
      puts ""
      answer = gets.chomp.to_i

      if new_question.is_correct_answer?(answer)
        puts " "
        puts "YES! You are correct."
        puts " "
        puts "#{@player1.life_remaining} vs #{@player2.life_remaining}"
      else
        self.reduce_life(currentPlayer)
        puts " "
        puts "Seriously? No!"
        puts " "
        puts "#{@player1.life_remaining} vs #{@player2.life_remaining}"
      end
      puts " "
      puts "_________________NEW TURN_________________"
      puts " "
    end
  end

  def create_Player(name)
    player = Player.new(name)
    return player
  end

  def reduce_life(player)
    player.lives -= 1
  end
  
  def player_turn
    @turn += 1

    if(@turn % 2 == 0)
      return @player2
    else
      return @player1
    end

  end

end

