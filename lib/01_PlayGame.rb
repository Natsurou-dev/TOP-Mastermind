require_relative '02_StaticDisplays'
require_relative '03_Methods'
require_relative '04_Player'

module PlayGame
  include StaticDisplays
  include Methods
  def play_mastermind()
    # ~Title
    display_seperation_bar()                              #Titles.rb
    display_game_title()                                  #Titles.rb
    # ~Choose role
    display_seperation_bar()                              #Titles.rb
    display_choose_role_title()                           #Titles.rb
    userRole = Player.new()
    userRole.choose_role()
    # ~Play Game
    display_seperation_bar()
    play_codebreaker() if userRole.role == "Code Breaker"
    play_codemaker() if userRole.role == "Code Maker"
  end

  def play_codebreaker()
      computerAnswer = generate_computer_answer() # ["Red", "Blue", "Yellow", "White"]
      display_computer_ready()
      display_seperation_bar()

      display_color_options()
      turn = 0
      loop do
        humanGuess = get_human_guess(); puts
        sleep 0.5
        display_board(humanGuess)
        display_pegs(humanGuess, computerAnswer)
        display_seperation_bar()
        if game_won?(humanGuess, computerAnswer)
          puts "                                                 Congratz, you won!"
          break
        end
        if turn == 9
          puts "                                                 Game over, you lose!"
          break
        end
        turn += 1
      end
  end

  def play_codemaker()
      humanAnswer = get_human_answer() # ["Red", "Blue", "Yellow", "White"]
      puts "                                                 Code received!";

      turn = 0
      loop do
        computerGuess = generate_computer_answer()
        display_seperation_bar()
        puts "Computer thinking..."
        sleep 2
        display_board(computerGuess)
        display_pegs(computerGuess, humanAnswer)
        sleep 1
        if game_won?(computerGuess, humanAnswer)
          puts "Computer wins!"
          break
        end
        if turn == 9
          puts "Game over, computer loses!"
          break
        end
        turn += 1
      end
  end
end