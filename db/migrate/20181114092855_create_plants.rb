class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.references :park, foreign_key: true

      t.timestamps
    end
  end
end
