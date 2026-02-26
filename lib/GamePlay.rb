require 'rainbow'

def create_computer_answer
  # red green blue yellow white black
  colors = ['Red', 'Green', 'Blue', 'Yellow', 'White', 'Black']

  computerAnswer = {
    1 => colors.sample,
    2 => colors.sample,
    3 => colors.sample,
    4 => colors.sample,
    5 => colors.sample,
  }
  return computerAnswer
end


def take_turn(computerAnswer)
  humanInput = get_human_input()
  check_human_input?(humanInput, computerAnswer)
end

def get_human_input
  
  acceptableNumbers = [1, 2, 3, 4, 5, 6]
  answer = Hash.new()
  colors = ['Red', 'Green', 'Blue', 'Yellow', 'White', 'Black']
  
  loop do
    correctGuess = true
    
    print "                                                 Enter input:  "
    humanAnswer = gets.split(" ")
    
    if humanAnswer.length != 5
      puts "\n                                                 Invalid\n\n"
      correctGuess = false
    else
      humanAnswer.each_with_index do |item, i|
        if !acceptableNumbers.include?(item.to_i)
          puts "\n                                                 Invalid\n\n"
          correctGuess = false
          break
        else
          answer[i + 1] = colors[item.to_i - 1]
        end
      end
    end
    break if correctGuess == true
  end
  return answer
end


def check_human_input?(humanInput, computerAnswer)
  perfect = 0
  slightly = 0
  same = true
  humanInput.each_pair do |key, value|
    if computerAnswer[key] == value
      perfect += 1
    else
      computerAnswer.each_pair do |inKey, inValue|
        if computerAnswer[inKey] == humanInput[key]
          slightly += 1
          computerAnswer.delete(inKey)
          same = false
        end
      end
    end

  end



  puts "Perfect matches: #{perfect}"
  puts "Slightly perfect matches: #{slightly}"
  return same
end


def display_about_game()
  board =
  <<-HEREDOC
                                                                             _______________________________
                                                                            /  _________________________   /|    
                                                                           /  /    /    /    /    /    /  / |
                                                                          /  /____/____/____/____/____/  /  |
                                                                         /  /    /    /    /    /    /  /   |
                                                                        /  /____/____/____/____/____/  /    |
                                                                       /  /    /    /    /    /    /  /    /
                                                                      /  /____/____/____/____/____/  /    /
                                                                     /  /    /    /    /    /    /  /    /
                                                                    /  /____/____/____/____/____/  /    /
                                                                   /  /    /    /    /    /    /  /    /
                                                                  /  /____/____/____/____/____/  /    /
                                                                 /  /    /    /    /    /    /  /    /
                                                                /  /____/____/____/____/____/  /    /
                                                               /  /    /    /    /    /    /  /    /
                                                              /  /____/____/____/____/____/  /    /
                                                             /  /    /    /    /    /    /  /    /
                                                            /  /____/____/____/____/____/  /    /
                                                           /  /    /    /    /    /    /  /    /
                                                          /  /____/____/____/____/____/  /    /
                                                         /  /    /    /    /    /    /  /    /
                                                        /  /____/____/____/____/____/  /    /
                                                       /______________________________/    /
                                                      |                               |   /
                                                      |                               |  / 
                                                      |                               | /
                                                      |_______________________________|/


  HEREDOC
  puts board
end

def display_computer_choices
  <<-'HEREDOC'   
__________________________________________                                       
|_|_____|_|_____|_|_____|_|_____|_|_____|_|
| |     | |     | |     | |     | |     | |
| |     | |     | |     | |     | |     | |
| |     | |     | |     | |     | |     | |
| |_____| |_____| |_____| |_____| |_____| |
|_|_____|_|_____|_|_____|_|_____|_|_____|_|
  HEREDOC
end

def display_tadashii_board
  <<-'HEREDOC'   
___________
|_|_____|_|
| |     | |
| |     | |
| |     | |
| |_____| |
|_|_____|_|
  HEREDOC
end