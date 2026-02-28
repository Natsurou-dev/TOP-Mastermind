class Player

  attr_reader :role

  def choose_role()
    loop do
      correct = false
      print "                                  Role:  "
      @role = gets.chomp.strip

      if @role == "1"
        correct = true
        print "\n\n                                  You choose:  "
        puts Rainbow("Code Maker").red
        @role = "Code Maker"
      elsif @role == "2"
        correct = true
        print "\n\n                                  You choose:  "
        puts Rainbow("Code Breaker").yellow
        @role = "Code Breaker"
      else
        puts "\n                                  Invalid response ~\n\n"
      end
      break if correct
    end
  end
end