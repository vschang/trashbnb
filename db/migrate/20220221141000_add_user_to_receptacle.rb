class AddUserToReceptacle < ActiveRecord::Migration[6.1]
  def change
    add_reference :receptacles, :user, null: false, foreign_key: true
  end
end
