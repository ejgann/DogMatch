class CreatePerson < ActiveRecord::Migration[5.2]
    def change
      create_table :person do |t|
        t.string :name
        t.string :activity_level
        t.boolean :allergy_compatible
        t.string :living_space_reqs
      end
    end
  end