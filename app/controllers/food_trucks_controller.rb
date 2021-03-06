class FoodTrucksController < ApplicationController
  before_action :set_food_truck, only: [:show, :edit, :update, :destroy]

  # GET /food_trucks
  # GET /food_trucks.json
  def index
    @food_trucks = FoodTruck.all
  end

  # GET /food_trucks/1
  # GET /food_trucks/1.json
  def show
  end

  # GET /food_trucks/new
  def new
    @food_truck = FoodTruck.new
  end

  # GET /food_trucks/1/edit
  def edit
  end

  # POST /food_trucks
  # POST /food_trucks.json
  def create
    @food_truck = FoodTruck.new(food_truck_params)

    respond_to do |format|
      if @food_truck.save
        format.html { redirect_to @food_truck, notice: 'Food truck was successfully created.' }
        format.json { render action: 'show', status: :created, location: @food_truck }
      else
        format.html { render action: 'new' }
        format.json { render json: @food_truck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_trucks/1
  # PATCH/PUT /food_trucks/1.json
  def update
    respond_to do |format|
      if @food_truck.update(food_truck_params)
        format.html { redirect_to @food_truck, notice: 'Food truck was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @food_truck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_trucks/1
  # DELETE /food_trucks/1.json
  def destroy
    @food_truck.destroy
    respond_to do |format|
      format.html { redirect_to food_trucks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_truck
      @food_truck = FoodTruck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_truck_params
      params.require(:food_truck).permit(:lat, :long, :name, :phone_number, :website, :description)
    end
end
