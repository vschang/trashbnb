class ChangePriceAndCapacityToBigIntOnReceptacles < ActiveRecord::Migration[6.1]
  def change
    change_column :receptacles, :price_per_day, :bigint
    change_column :receptacles, :capacity, :bigint
  end
end
