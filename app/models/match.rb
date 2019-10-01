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
             if dog.activity_level == user.activity_level
                # binding.pry
                Match.create(user_id: user.id, dog_breed_id: dog.id)
            #  elsif dog.allergy_compatible == true && user.allergy_compatible == true
            #     Match.create(user_id: user.id, dog_breed_id: dog.id)
            #  elsif dog.living_space_reqs == user.living_space_reqs
            #     Match.create(user_id: user.id, dog_breed_id: dog.id)
            end
        end

    end



end