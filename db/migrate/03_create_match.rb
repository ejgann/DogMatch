class CreateMatch < ActiveRecord::Migration[5.2]
    def change
      create_table :match do |t|
        t.integer :person_id
        t.integer :dog_breed_id 
      end
    end
  end