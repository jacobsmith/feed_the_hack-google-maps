class AddItemsToFoodTrucks < ActiveRecord::Migration
  def change
    add_column :food_trucks, :logo_url, :string
    add_column :food_trucks, :website, :string
    add_column :food_trucks, :phone_number, :string
  end
end
