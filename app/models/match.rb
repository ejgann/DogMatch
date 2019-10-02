class Match < ActiveRecord::Base

    belongs_to :dog_breed
    belongs_to :user

    def self.user_dog_comparison(user)

        DogBreed.all.select do |dog|
            if dog.activity_level == user.activity_level && 
                user.living_space_reqs >= dog.living_space_reqs &&

                if user.allergy_compatible == false
                    dog.allergy_compatible == true || dog.allergy_compatible == false
                elsif user.allergy_compatible == true
                    dog.allergy_compatible == true
                end 

                # binding.pry

                Match.create(user_id: user.id, dog_breed_id: dog.id)

                puts "You matched with #{dog.name}"

            end
    
        end

            matches = false
            Match.all.each do |match|
                if match.user_id == user.id
                    matches = true
                end
            end

            if !matches

            puts "Unfortunately we could not recommend any dogs for you."

        end

        puts "\n"
        puts "These dogs are good for people who: "
        puts User.get_al
        puts "Live in a " + User.get_lc
        puts User.get_allerg
                
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