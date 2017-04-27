class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :capacity
      t.datetime :opens_at
      t.datetime :closes_at

      t.timestamps
    end
  end
end
