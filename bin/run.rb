require_relative '../config/environment.rb'
cli = Cli.new

cli.greeting
user_input = gets.chomp

user_1 = User.create(name: user_input) 

user_1.activity_question

# binding.pry

user_1.living_space_question

user_1.allergy_question

binding.pry
0


# new_person = Person.find_or_create_by(name: userInput)

