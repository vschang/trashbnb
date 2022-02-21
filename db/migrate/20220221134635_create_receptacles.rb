class CreateReceptacles < ActiveRecord::Migration[6.1]
  def change
    create_table :receptacles do |t|
      t.string :name
      t.string :picture
      t.integer :capacity
      t.float :price_per_day
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
