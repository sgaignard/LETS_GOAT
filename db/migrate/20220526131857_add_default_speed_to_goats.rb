class AddDefaultSpeedToGoats < ActiveRecord::Migration[6.1]
  def change
    change_column :goats, :speed, :integer, default: 10
  end
end
