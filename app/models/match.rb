class Match < ActiveRecord::Base

    belongs_to :dog_breed
    belongs_to :user



    def self.dog_array

        
        dog_list = []

        DogBreed.all.each do |dog|
        
            dog_list << dog
        
        end

        return dog_list
    end

    def self.good_allergy_dog

        DogBreed.where("allergy_compatible = t")
    
    end

    def self.user_dog_test_comparison(user)

        self.dog_array.select do |dog|
            dog if dog.activity_level == user.activity_level
        end

    end

    # def self.user_dog_comparison(user)

    #     self.dog_array.select do |dog|
    #          if dog.activity_level == user.activity_level
    #             Match.create(user.id,dog.id)
    #         #  elsif dog.allergy_compatible == t && user.allergy_compatible == t
    #         #     Match.create(user.id,dog.id)
    #         #  elsif dog.living_space_reqs == user.living_space_reqs
    #         #     Match.create(user.id,dog.id)
    #         end
    #     end

    # end



end