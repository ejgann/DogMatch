class Match < ActiveRecord::Base
    
    belongs_to :dog_breed
    belongs_to :user

    
    def self.user_dog_comparison(user)
        array = []

        DogBreed.all.each do |dog|
            if dog.activity_level == user.activity_level && 
                user.living_space_reqs >= dog.living_space_reqs &&

                if user.allergy_compatible == false
                    dog.allergy_compatible == true || dog.allergy_compatible == false
                elsif user.allergy_compatible == true
                    dog.allergy_compatible == true
                end 

                Match.create(user_id: user.id, dog_breed_id: dog.id)

                puts "You matched with #{dog.name}"

                array << dog.name
                # binding.pry
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
        puts User.get_act_level
        puts "Live in a " + User.get_living_cond
        puts User.get_allergy
                
        puts "
                |\\_/|                  
                | @ @   Woof! 
                |   <>              _  
                |  _/\\------____ ((| |))
                |               `--' |   
           _____|_       ___|   |___.' 
          /_/_____/____/________|\n\n"
        # binding.pry
          return array
    end
    
end