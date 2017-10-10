class CreateCars < ActiveRecord::Migration
  def change
    def change
      create_table :cars do |t|
        t.string :make, null: false
        t.string :model, null: false
        t.string :type
        t.integer :top_speed
        t.integer :horsepower

        t.timestamps
      end
    end
  end
end
