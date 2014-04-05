class FoodTruckOwnersController < ApplicationController
  before_action :set_food_truck_owner, only: [:show, :edit, :update, :destroy]

  # GET /food_truck_owners
  # GET /food_truck_owners.json
  def index
    @food_truck_owners = FoodTruckOwner.all
  end

  # GET /food_truck_owners/1
  # GET /food_truck_owners/1.json
  def show
  end

  # GET /food_truck_owners/new
  def new
    @food_truck_owner = FoodTruckOwner.new
  end

  # GET /food_truck_owners/1/edit
  def edit
  end

  # POST /food_truck_owners
  # POST /food_truck_owners.json
  def create
    @food_truck_owner = FoodTruckOwner.new(food_truck_owner_params)

    respond_to do |format|
      if @food_truck_owner.save
        format.html { redirect_to @food_truck_owner, notice: 'Food truck owner was successfully created.' }
        format.json { render action: 'show', status: :created, location: @food_truck_owner }
      else
        format.html { render action: 'new' }
        format.json { render json: @food_truck_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_truck_owners/1
  # PATCH/PUT /food_truck_owners/1.json
  def update
    respond_to do |format|
      if @food_truck_owner.update(food_truck_owner_params)
        format.html { redirect_to @food_truck_owner, notice: 'Food truck owner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @food_truck_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_truck_owners/1
  # DELETE /food_truck_owners/1.json
  def destroy
    @food_truck_owner.destroy
    respond_to do |format|
      format.html { redirect_to food_truck_owners_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_truck_owner
      @food_truck_owner = FoodTruckOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_truck_owner_params
      params.require(:food_truck_owner).permit(:lat, :long, :name)
    end
end
