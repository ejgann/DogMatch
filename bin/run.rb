require_relative '../config/environment.rb'
cli = Cli.new

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

# binding.pry
# 0


