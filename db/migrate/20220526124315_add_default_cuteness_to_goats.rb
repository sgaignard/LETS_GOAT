class AddDefaultCutenessToGoats < ActiveRecord::Migration[6.1]
  def change
    change_column :goats, :cuteness, :integer, default: 5
  end
end
