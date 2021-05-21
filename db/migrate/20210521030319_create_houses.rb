class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :property_name
      t.integer :rent
      t.string :address
      t.integer :age
      t.text :remarks

      t.timestamps
    end
  end
end
