class Cli

    def title
        puts Rainbow("
        ____              __  __       _       _     
       |  _ \\  ___   __ _|  \\/  | __ _| |_ ___| |__  
       | | | |/ _ \\ / _` | |\\/| |/ _` | __/ __| '_ \\ 
       | |_| | (_) | (_| | |  | | (_| | || (__| | | |
       |____/ \\___/ \\__, |_|  |_|\\__,_|\\__\\___|_| |_|
                    |___/                            ").blue

        puts Rainbow("\n      ************************************************\n\n").blue
    end

    def greeting
        puts Rainbow("Hello, what is your name?").green
    end

    def loop_method

        puts "Would you like to run this app again? (yes|no)"

        restart = gets.chomp
        puts "\n"

        if restart == "no"

            puts Rainbow("Thanks for using our application!\n\n").orange

        elsif restart != "yes"
            until restart == "yes" || restart == "no" do
                puts "That is not an option, please enter yes or no"

                puts "Would you like to run this app again? (yes|no)"

                restart = gets.chomp
                puts "\n"
            end

        end
        
        return restart

    end

end