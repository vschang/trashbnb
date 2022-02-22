class AddDescriptionToReceptacle < ActiveRecord::Migration[6.1]
  def change
    add_column :receptacles, :description, :string
  end
end
