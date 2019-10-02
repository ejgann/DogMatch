require_relative '../config/environment.rb'
cli = Cli.new


loop do

        cli.title
        cli.greeting
        user_input = gets.chomp

        user = User.create(name: user_input) 

        puts "\n"

        user.activity_question

        # binding.pry

        user.living_space_question

        user.allergy_question

        puts "\n**************************************************\n\n"

        Match.user_dog_comparison(user)

        puts "\n**************************************************\n\n"

    puts "Would you like to run this app again?"

    restart = gets.chomp
    puts "\n"

    if restart == "no"

        puts "Thanks for using our application!\n\n"

        break
    end


end
# binding.pry
# 0


