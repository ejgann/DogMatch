class CreateMatch < ActiveRecord::Migration[5.2]
    def change
      create_table :matches do |t|
        t.integer :user_id
        t.integer :dog_breed_id 
      end
    end
  end