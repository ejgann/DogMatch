class Person < ActiveRecord::Base
    has_many :dog_breed
    has_many :dog_breed through: :match
    
    @@all = []

    attr_reader :name
    attr_accessor :activity_level, :allergy_compatible, :living_space_reqs

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def activity_level(response)
        @activity_level = response
    end

    def allergy_compatible(response)
        @allergy_compatible = response
    end

    def living_space_reqs(response)
        @living_space_reqs = response
    end

    

end
