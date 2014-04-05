require 'test_helper'

class FoodTruckOwnersControllerTest < ActionController::TestCase
  setup do
    @food_truck_owner = food_truck_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_truck_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_truck_owner" do
    assert_difference('FoodTruckOwner.count') do
      post :create, food_truck_owner: { lat: @food_truck_owner.lat, long: @food_truck_owner.long, name: @food_truck_owner.name }
    end

    assert_redirected_to food_truck_owner_path(assigns(:food_truck_owner))
  end

  test "should show food_truck_owner" do
    get :show, id: @food_truck_owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_truck_owner
    assert_response :success
  end

  test "should update food_truck_owner" do
    patch :update, id: @food_truck_owner, food_truck_owner: { lat: @food_truck_owner.lat, long: @food_truck_owner.long, name: @food_truck_owner.name }
    assert_redirected_to food_truck_owner_path(assigns(:food_truck_owner))
  end

  test "should destroy food_truck_owner" do
    assert_difference('FoodTruckOwner.count', -1) do
      delete :destroy, id: @food_truck_owner
    end

    assert_redirected_to food_truck_owners_path
  end
end
