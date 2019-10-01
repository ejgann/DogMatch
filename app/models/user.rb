class User < ActiveRecord::Base
    has_many :matches
    has_many :dog_breeds, through: :matches
    
    def activity_question
        puts "What is your typical activity level?
        A. Highly Active
        B. Moderately Active
        C. I don't get off the couch"

        activity_input = gets.chomp
        activity_level_assignment(activity_input)
    end

    def activity_level_assignment(activity_input)

            if activity_input.downcase == "a"
        
                    self.activity_level = "Highly active"
                    self.save
                elsif activity_input.downcase == "b"
        
                    self.activity_level = "Moderately active"
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
        living_space_assignment(living_space_input)
    end

    def living_space_assignment(living_space_input)

            if living_space_input.downcase == "a"
        
                    self.living_space_reqs = "Apartment"
                    self.save
                elsif living_space_input.downcase == "b"
        
                    self.living_space_reqs = "Townhome"
                    self.save
                elsif living_space_input.downcase == "c"
        
                    self.living_space_reqs = "Single Family Home"
                    self.save
                elsif living_space_input.downcase == "d"
        
                    self.living_space_reqs = "Farm"
                    self.save
                elsif living_space_input.downcase == "e"
        
                    self.living_space_reqs = "Car/ Homeless"
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


    # PERSON -- methods
    # create new person
    # build out person's information (allergies, living space, activity level)
    # match dog_breed to person