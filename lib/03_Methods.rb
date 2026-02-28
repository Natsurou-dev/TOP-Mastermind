require 'rainbow'
module Methods
  def generate_computer_answer()
    colors = ['Red', 'Green', 'Blue', 'Yellow', 'White', 'Black']

    computerAnswer = [colors.sample, colors.sample, colors.sample, colors.sample ]
    return computerAnswer
  end

  def get_human_guess()
    acceptableNumbers = [1, 2, 3, 4, 5, 6]
    answer = Array.new()
    colors = ['Red', 'Green', 'Blue', 'Yellow', 'White', 'Black']
    
    loop do
      validGuess = true
      
      print "                                                 Your guess:  "
      humanInput = gets.split(" ")
      
      if humanInput.length != 4
        puts "\n                                                 Invalid ~\n\n"
        validGuess = false
      else
        humanInput.each_with_index do |item, i|
          if !acceptableNumbers.include?(item.to_i)
            puts "\n                                                 Invalid ~\n\n"
            validGuess = false
            break
          else
            answer[i] = colors[item.to_i - 1]
          end
        end
      end
      break if validGuess == true
    end
    return answer #["Green", "Blue", "Green", "Red"]
  end

  def get_human_answer()
    acceptableNumbers = [1, 2, 3, 4, 5, 6]
    answer = Array.new()
    colors = ['Red', 'Green', 'Blue', 'Yellow', 'White', 'Black']
    
    loop do
      validGuess = true
      
      print "                                                 Your code:  "
      humanInput = gets.split(" ")
      
      if humanInput.length != 4
        puts "\n                                                 Invalid ~\n\n"
        validGuess = false
      else
        humanInput.each_with_index do |item, i|
          if !acceptableNumbers.include?(item.to_i)
            puts "\n                                                 Invalid ~\n\n"
            validGuess = false
            break
          else
            answer[i] = colors[item.to_i - 1]
          end
        end
      end
      break if validGuess == true
    end
    return answer #["Green", "Blue", "Green", "Red"]
  end

  def display_board(guess)
      @grid ||= []
      colors = {
        "Red" => Rainbow(" 1 ").bg(:red),
        "Green" => Rainbow(" 2 ").bg(:green),
        "Blue" => Rainbow(" 3 ").bg(:blue),
        "Yellow" => Rainbow(" 4 ").bg(:yellow),
        "White" => Rainbow(" 5 ").bg(:white),
        "Black" => Rainbow(" 6 ").bg(:black)
      }
      #["Green", "Blue", "Green", "Red"]
      temp = guess.map{|e| colors[e]}.join("  ") + "\n\n"
      temp = "                                                   " + temp
      @grid.push temp
      puts "                                                       ~ BOARD ~\n\n"
      puts "                                                 ╔────────────────────╗\n\n"
      puts @grid
      puts "                                                 ╚────────────────────╝\n\n"
  end

  def display_pegs(guess, answer)
    #ANS   ["Red", "Blue", "Yellow", "White"]
    #GUESS ["Green", "Blue", "Green", "Red"]
    takenAns = [false, false, false, false]
    takenGuess = [false, false, false, false]
    perfect = 0
    slightly = 0     
    

    guess.each_with_index do |ele, i|
      if answer[i] == ele
        perfect += 1
        takenAns[i] = true
        takenGuess[i] = true
      end
    end
    
    guess.each_with_index do |guessEl, guessI|
      next if takenGuess[guessI]
      answer.each_with_index do |ansEl, ansI|
        next if takenAns[ansI]
        if guessEl == ansEl
          slightly += 1
          takenGuess[guessI] = true
          takenAns[ansI] = true
          break
        end
      end
    end




    rP = (Rainbow(" ").bg(:red).bright + "  ") * perfect
    wP = (Rainbow(" ").bg(:white) + "  ") * slightly
    

    matches =
    <<-HEREDOC
    
                                                      ~ PEGS ~
                                                  ╔────────────╗
                                  
                                                    #{rP}#{wP}
                                  
                                                  ╚────────────╝
    HEREDOC

    puts matches
  end

  def game_won?(guess, answer)
    return guess == answer
  end
end