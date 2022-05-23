class CreateGoats < ActiveRecord::Migration[6.1]
  def change
    create_table :goats do |t|
      t.string :name
      t.string :color
      t.string :gender
      t.integer :cuteness
      t.float :price
      t.integer :speed

      t.timestamps
    end
  end
end
