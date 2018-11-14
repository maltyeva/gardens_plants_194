class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :address
      t.integer :rating
      t.string :banner_url

      t.timestamps
    end
  end
end
