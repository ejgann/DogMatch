class CreateUser < ActiveRecord::Migration[5.2]
    def change
      create_table :users do |t|
        t.string :name
        t.string :activity_level
        t.boolean :allergy_compatible
        t.integer :living_space_reqs
        t.boolean :children_compatible
        t.integer :barking_reqs
      end
    end
  end