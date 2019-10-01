require_relative '../config/environment.rb'

puts "hello what is your name"
user_input = gets.chomp

user_1 = User.new(name: user_input) 

user_1.activity_question

# binding.pry
# 0



# new_person = Person.find_or_create_by(name: userInput)

