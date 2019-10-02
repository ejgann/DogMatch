require_relative '../config/environment.rb'
cli = Cli.new

cli.title
cli.greeting
user_input = gets.chomp

user_1 = User.create(name: user_input) 

user_1.activity_question

# binding.pry

user_1.living_space_question

user_1.allergy_question

Match.user_dog_comparison(user_1)

# binding.pry
# 0


