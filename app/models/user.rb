class User < ActiveRecord::Base
    has_many :matches
    has_many :dog_breeds, through: :matches

    def activity_question
        puts "What is your typical activity level?
        A. Highly Active
        B. Moderately Active
        C. I don't get off the couch"

        activity_input = gets.chomp
        puts "\n"
        activity_level_assignment(activity_input)
    end

    def activity_level_assignment(activity_input)

            if activity_input.downcase == "a"
        
                self.activity_level = "Highly Active"
                self.save

            elsif activity_input.downcase == "b"
    
                self.activity_level = "Moderately Active"
                self.save

            elsif activity_input.downcase == "c"
    
                self.activity_level = "I don't get off the couch"
                self.save

            else
    
                puts "That is not an option. Please enter a letter to select."
    
                activity_question

        end
    end
    
    def living_space_question
        puts "What is your living space like?
        A. Apartment
        B. Townhome
        C. Single Family Home
        D. Farm
        E. Car/ Homeless"

        living_space_input = gets.chomp
        puts "\n"
        living_space_assignment(living_space_input)
    end

    def living_space_assignment(living_space_input)

            if living_space_input.downcase == "a"
        
                    self.living_space_reqs = 2
                    self.save
                elsif living_space_input.downcase == "b"
        
                    self.living_space_reqs = 3
                    self.save
                elsif living_space_input.downcase == "c"
        
                    self.living_space_reqs = 4
                    self.save
                elsif living_space_input.downcase == "d"
        
                    self.living_space_reqs = 5
                    self.save
                elsif living_space_input.downcase == "e"
        
                    self.living_space_reqs = 1
                    self.save
                else
        
                    puts "That is not an option. Please enter a letter to select."
        
                    living_space_question

        end
    end

    def allergy_question
        puts "Do you have any dog allergies?
        A. Yes
        B. No"

        allergy_input = gets.chomp
        puts "\n"
        allergy_assignment(allergy_input)
    end

    def allergy_assignment(allergy_input)

            if allergy_input.downcase == "a" || allergy_input.downcase == "yes"
        
                    self.allergy_compatible = true
                    self.save
                elsif allergy_input.downcase == "b" || allergy_input.downcase == "no"
        
                    self.allergy_compatible = false
                    self.save
                else
        
                    puts "That is not an option. Please enter a letter or yes/no to select."
        
                    allergy_question

        end
    end

end




#  ##########  CHILDREN QUESTION ##########
def children_question
    puts "Do you have any children under 10 years of age?
    A. Yes
    B. No"

    children_input = gets.chomp
    puts "\n"
    children_assignment(children_input)
end

def children_assignment(children_input)

        if children_input.downcase == "a" || children_input.downcase == "yes"
    
                self.children_compatible = true
                self.save
            elsif children_input.downcase == "b" || children_input.downcase == "no"
    
                self.children_compatible = false
                self.save
            else
    
                puts "That is not an option. Please enter a letter or yes/no to select."
    
                children_question

    end
end



#   ##########  TRAINING QUESTION ##########

# def training_question
#     puts "How much time per week can you devote to training?
#     A. A little time...1-5 hours per week
#     B. Some time...6-10 hours per week
#     C. A lot of time...more than 10 hours per week"

#     training_input = gets.chomp
#     puts "\n"
#     training_assignment(training_input)
# end

# def training_assignment(training_input)

#        if training_input.downcase == "a"
        
                # self.training_reqs = 1
                # self.save
                # elsif training_input.downcase == "b"

                # self.training_reqs = 2
                # self.save
                # elsif training_input.downcase == "c"

                # self.training_reqs = 3
                # self.save

#             else
    
#                 puts "That is not an option. Please enter a letter to select."
    
#                 training_question

#     end
# end


#   ##########  BARKING QUESTION ##########
# def barking_question
    #     puts "How well do you tolerate a dog barking?
    #     A. I require minimal barking
    #     B. Some barking is fine
    #     C. I can handle any level of barking"


#     barking_input = gets.chomp
#     puts "\n"
#     barking_assignment(barking_input)
# end

# def barking_assignment(barking_input)

#        if barking_input.downcase == "a"
        
                # self.barking_reqs = 1
                # self.save
                # elsif barking_input.downcase == "b"

                # self.barking_reqs = 2
                # self.save
                # elsif barking_input.downcase == "c"

                # self.barking_reqs = 3
                # self.save

#             else
    
#                 puts "That is not an option. Please enter a letter to select."
    
#                 barking_question

#     end
# end