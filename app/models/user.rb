class User < ActiveRecord::Base
    has_many :matches
    has_many :dog_breeds, through: :matches
    
    def activity_question
        puts "What is your typical activity level?
        A. Highly active
        B. Moderately active
        C. I don't get off the couch"

        activity_input = gets.chomp
        activity_level_assignment(activity_input)
    end

    def activity_level_assignment(activity_input)

            if activity_input.downcase == "a"
        
                    self.activity_level = "Highly active"
                
                elsif activity_input.downcase == "b"
        
                    self.activity_level = "Moderately active"
                
                elsif activity_input.downcase == "c"
        
                    self.activity_level = "I don't get off the couch"
                            
                else
        
                    puts "That is not an option. Please enter a letter to select."
        
                    activity_question

        end
    end
    

end


    # PERSON -- methods
    # create new person
    # build out person's information (allergies, living space, activity level)
    # match dog_breed to person