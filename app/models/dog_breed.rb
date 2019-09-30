class DogBreed < ActiveRecord::Base

    has_many :person
    has_many :person through: :match

    @@all = []

    attr_reader :name
    attr_accessor :activity_level, :allergy_compatible, :living_space_reqs

    def initialize(name, activity_level, allergy_compatible, living_space_reqs)
        @name = name
        @activity_level = activity_level
        @allergy_compatible = allergy_compatible
        @living_space_reqs = living_space_reqs
        @@all << self
    end

    def self.all
        @@all
    end

end