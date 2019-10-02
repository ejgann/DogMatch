class Match < ActiveRecord::Base

    belongs_to :dog_breed
    belongs_to :user

    def self.good_allergy_dog

        DogBreed.where("allergy_compatible = t")
    
    end

    def self.user_dog_test_comparison(user)

        self.dog_array.select do |dog|
            dog if dog.activity_level == user.activity_level
        end

    end

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
        
    end
    
end