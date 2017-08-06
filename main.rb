module Math_Game
  require './Player.rb'
  require './Question.rb'

  player1 = true
  player2 = false
  p1Name = ''
  p2Name = ''

  while (p1Name.size == 0)
    puts "Please enter Player 1 name:"
    p1Name = gets.chomp()
  end

  while (p2Name.size == 0)
    puts "Please enter Player 2 name:"
    p2Name = gets.chomp()
  end

  p1 = Player.new(p1Name)
  p2 = Player.new(p2Name)
  question = Question.new

  puts "Math game"

  while (p1.lifes > 0 || p2[:lifes] > 0)

    if (player1)
      values = question.generateQuestion()
      puts "Question for player 1: #{values[0]} + #{values[1]}"
      total = gets.chomp()
      result = question.checkAnswer?(values, total)
      if (!result)
        p1.loseLife()
        puts "Wrong answer, lifes left #{p1.lifes}"
      else
        puts "Correct! Good job!"
      end

      player1 = false
      player2 = true

      if(p1.lifes == 0)
        puts "No more lifes left for player 1, player 2 is the WINNER!"
        break
      end
    else
      values = question.generateQuestion()
      puts "Question for player 2: #{values[0]} + #{values[1]}"
      total = gets.chomp()
      result = question.checkAnswer?(values, total)
      if (!result)
        p2.loseLife()
        puts "Wrong answer, lifes left #{p1.lifes}"
      else
        puts "Correct! Good job!"
      end
      player2 = false
      player1 = true

      if(p2.lifes == 0)
        puts "No more lifes left for player 2, player 1 is the WINNER!"
        break
      end
    end
  end
end


