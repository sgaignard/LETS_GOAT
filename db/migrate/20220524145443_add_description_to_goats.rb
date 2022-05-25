class AddDescriptionToGoats < ActiveRecord::Migration[6.1]
  def change
    add_column :goats, :description, :text
  end
end
