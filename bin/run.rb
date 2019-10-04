require_relative '../config/environment.rb'
cli = Cli.new

restart = ""
until restart == "no" do

            cli.title
            cli.greeting
            user_input = gets.chomp

            user = User.create(name: user_input) 

            puts "\n"

            user.activity_question

            user.living_space_question

            user.allergy_question

            user.children_question

            user.barking_question
# user.training_question

            puts Rainbow("\n**************************************************\n\n").yellow

            puts Rainbow("MATCHES: \n").orange
            Match.user_dog_comparison(user)

            puts Rainbow("\n**************************************************\n\n").yellow

            restart = cli.loop_method

end