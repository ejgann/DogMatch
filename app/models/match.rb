class Match < ActiveRecord::Base

    belongs_to :dog_breed
    belongs_to :user

    ##########  Final Match Function ##########

    def self.user_dog_comparison(user)

        DogBreed.all.each do |dog|
            # Compares Dog Activity needed to user Activity
            if dog.activity_level == user.activity_level && 
                # Compares user living space to space needed for dog
                user.living_space_reqs >= dog.living_space_reqs &&
                # Compares users barking requirements to how much a dog barks
                 user.barking_reqs >= dog.barking_reqs &&

                # Compares user allergy needs to if dog is allergy friendly
                if user.allergy_compatible == false
                    dog.allergy_compatible == true || dog.allergy_compatible == false
                elsif user.allergy_compatible == true
                    dog.allergy_compatible == true 
                end && 
                    
                # Compares if user has children to if dog is child friendly
                if user.children_compatible == false
                    dog.children_compatible == true || dog.children_compatible == false
                elsif user.children_compatible == true
                  dog.children_compatible == true               
                end

                # If all requirements are true create an Match instance between user and dog and output dog names
                Match.create(user_id: user.id, dog_breed_id: dog.id)

                puts "You matched with #{dog.name}"
            

            end
    
        end

            # If the user does not match with any dogs output a no dog match statement
            matches = false
            Match.all.each do |match|
                if match.user_id == user.id
                    matches = true
                end
            end

            if !matches

            puts "Unfortunately we could not recommend any dogs for you."

        end

        # Reiterate Output for why dogs match to user
        puts "\n"
        puts "These dogs are good for people who: "
        puts User.get_act_level
        puts "Live in a " + User.get_living_cond
        puts User.get_allergy
        puts User.get_children
        puts User.get_barking
                
        puts "
                |\\_/|                  
                | @ @   Woof! 
                |   <>              _  
                |  _/\\------____ ((| |))
                |               `--' |   
           _____|_       ___|   |___.' 
          /_/_____/____/________|\n\n"


    end
    
end