module StaticDisplays
    def display_seperation_bar()
        puts "\n\n\n\n                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n\n\n"
    end
    def display_game_title()
        title =
        <<-HEREDOC
                                                                
                                                                
                                                                
                                                                
                                                        __| |____________________________________________| |__
                                                        (__     ____________________________________________   __)
                                                            | |                                            | |
                                                            | |                                            | |
                                                            | |                Welcome to                  | |
                                                            | |                                            | |
                                                            | |              ~ Mastermind ~                | |
                                                            | |                                            | |
                                                        __| |dc__________________________________________| |__
                                                        (__     ____________________________________________   __)
                                                            | |                                            | |                                                     
        HEREDOC

        puts title
    end
    def display_choose_role_title()
        title =
        <<-'HEREDOC'
                                               ___ _                                                    __       _      
                                              / __\ |__   ___   ___  ___  ___  /\_/\___  _   _ _ __    /__\ ___ | | ___ 
                                             / /  | '_ \ / _ \ / _ \/ __|/ _ \ \_ _/ _ \| | | | '__|  / \/// _ \| |/ _ \
                                            / /___| | | | (_) | (_) \__ \  __/  / \ (_) | |_| | |    / _  \ (_) | |  __/
                                            \____/|_| |_|\___/ \___/|___/\___|  \_/\___/ \__,_|_|    \/ \_/\___/|_|\___|
                                                                                



        HEREDOC
        puts title
        print Rainbow("                                                 Code Maker ~ 1").red ; print Rainbow("                                  Code Breaker ~ 2\n\n\n\n").yellow
        
    end
    def display_color_options
        print "                                                 Color Options  ~  "
        print Rainbow(" 1 ").bg(:red); print "   "
        print Rainbow(" 2 ").bg(:green); print "   "
        print Rainbow(" 3 ").bg(:blue); print "   "
        print Rainbow(" 4 ").bg(:yellow); print "   "
        print Rainbow(" 5 ").bg(:white); print "   "
        print Rainbow(" 6 ").bg(:black); puts "   "
        puts ; puts
    end
    def display_computer_ready
        title =
        <<-'HEREDOC'
                                               ___                            _                _                                
                                              / __\___  _ __ ___  _ __  _   _| |_ ___ _ __    /_\  _ __  _____      _____ _ __  
                                             / /  / _ \| '_ ` _ \| '_ \| | | | __/ _ \ '__|  //_\\| '_ \/ __\ \ /\ / / _ \ '__| 
                                            / /__| (_) | | | | | | |_) | |_| | ||  __/ |    /  _  \ | | \__ \\ V  V /  __/ |    
                                            \____/\___/|_| |_| |_| .__/ \__,_|\__\___|_|    \_/ \_/_| |_|___/ \_/\_/ \___|_|    
                                                                |_|                                                            
                                               ___                          _           _                                       
                                              / _ \___ _ __   ___ _ __ __ _| |_ ___  __| |                                      
                                             / /_\/ _ \ '_ \ / _ \ '__/ _` | __/ _ \/ _` |                                      
                                            / /_\\  __/ | | |  __/ | | (_| | ||  __/ (_| |                                      
                                            \____/\___|_| |_|\___|_|  \__,_|\__\___|\__,_|                                      
                                                                                                                                                                                            
        HEREDOC
        sleep 1
        puts title
    end
end