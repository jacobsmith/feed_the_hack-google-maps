class AddDescriptionToFoodTrucks < ActiveRecord::Migration
  def change
    add_column :food_trucks, :description, :text
  end
end
