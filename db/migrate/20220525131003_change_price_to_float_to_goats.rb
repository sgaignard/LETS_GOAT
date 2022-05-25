class ChangePriceToFloatToGoats < ActiveRecord::Migration[6.1]
  def change
    change_column :goats, :price, :float
  end
end
