class Player

  attr_reader :role

  def choose_role()
    loop do
      correct = false
      print "                                  Role:  "
      @role = gets.chomp.to_i
      if @role == 1
        correct = true
        print "\n\n                                  You choose:  "
        print Rainbow("Code Maker").red
      elsif @role == 2
        correct = true
        print "\n\n                                  You choose:  "
        print Rainbow("Code Breaker").yellow
      else
        puts "\n                                  Invalid response ~\n\n"
      end
      break if correct
    end
  end


end