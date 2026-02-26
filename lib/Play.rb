require_relative 'Player'
require_relative 'Titles'
require_relative 'GamePlay'

def play_game
  include Titles
  #Titles
  display_seperation_bar()
  display_game_title()
  display_seperation_bar()
  display_choose_role_title()

  #Player
  player = Player.new()
  player.choose_role()

  #Titles
  display_seperation_bar()
  
  if player.role == 1
    #GamePlay
    computerAnswer = create_computer_answer()

    #Titles
    display_computer_ready()

    #GamePlay
    display_color_options()
    display_about_game()
    take_turn(computerAnswer)
  end


end