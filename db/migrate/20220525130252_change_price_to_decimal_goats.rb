class ChangePriceToDecimalGoats < ActiveRecord::Migration[6.1]
  def change
    change_column :goats, :price, :decimal, precision: 5, scale: 2
  end
end
