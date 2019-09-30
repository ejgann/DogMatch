class Match < ActiveRecord::Base

    belongs_to :dog_breed, :person

    @@all = []

    attr_accessor :person, :dog_breed

    def initialize(person, dog_breed)
        @person = person
        @dog_breed = dog_breed
        @@all << self
    end

    def self.all
        @@all
    end


end