require_relative '../config/environment.rb'
cli = Cli.new

puts "
 ____              __  __       _       _     
|  _ \\  ___   __ _|  \\/  | __ _| |_ ___| |__  
| | | |/ _ \\ / _` | |\\/| |/ _` | __/ __| '_ \\ 
| |_| | (_) | (_| | |  | | (_| | || (__| | | |
|____/ \\___/ \\__, |_|  |_|\\__,_|\\__\\___|_| |_|
             |___/                            "

cli.greeting
user_input = gets.chomp

user_1 = User.create(name: user_input) 

user_1.activity_question

# binding.pry

user_1.living_space_question

user_1.allergy_question

# test = Match.user_dog_test_comparison(user_1)

Match.user_dog_comparison(user_1)

# binding.pry
# 0


