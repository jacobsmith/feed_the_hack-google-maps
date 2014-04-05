class CreateFoodTruckOwners < ActiveRecord::Migration
  def change
    create_table :food_truck_owners do |t|
      t.string :lat
      t.string :long
      t.string :name

      t.timestamps
    end
  end
end
