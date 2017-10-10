class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.belongs_to :user
      t.string :make, null: false
      t.string :model, null: false
      t.string :category
      t.integer :top_speed
      t.integer :horsepower

      t.timestamps
    end
  end
end
