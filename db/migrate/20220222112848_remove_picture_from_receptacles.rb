class RemovePictureFromReceptacles < ActiveRecord::Migration[6.1]
  def change
    remove_column :receptacles, :picture, :string
  end
end
