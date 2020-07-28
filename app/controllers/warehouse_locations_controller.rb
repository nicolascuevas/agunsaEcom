class WarehouseLocationsController < ApplicationController
  before_action :set_warehouse_location, only: [:show, :edit, :update, :destroy]

  # GET /warehouse_locations
  # GET /warehouse_locations.json
  def index
    @warehouse_locations = WarehouseLocation.all
  end

  # GET /warehouse_locations/1
  # GET /warehouse_locations/1.json
  def show
  end

  # GET /warehouse_locations/new
  def new
    @warehouse_location = WarehouseLocation.new
  end

  # GET /warehouse_locations/1/edit
  def edit
  end

  # POST /warehouse_locations
  # POST /warehouse_locations.json
  def create
    @warehouse_location = WarehouseLocation.new(warehouse_location_params)

    respond_to do |format|
      if @warehouse_location.save
        format.html { redirect_to @warehouse_location, notice: 'Warehouse location was successfully created.' }
        format.json { render :show, status: :created, location: @warehouse_location }
      else
        format.html { render :new }
        format.json { render json: @warehouse_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /warehouse_locations/1
  # PATCH/PUT /warehouse_locations/1.json
  def update
    respond_to do |format|
      if @warehouse_location.update(warehouse_location_params)
        format.html { redirect_to @warehouse_location, notice: 'Warehouse location was successfully updated.' }
        format.json { render :show, status: :ok, location: @warehouse_location }
      else
        format.html { render :edit }
        format.json { render json: @warehouse_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warehouse_locations/1
  # DELETE /warehouse_locations/1.json
  def destroy
    @warehouse_location.destroy
    respond_to do |format|
      format.html { redirect_to warehouse_locations_url, notice: 'Warehouse location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warehouse_location
      @warehouse_location = WarehouseLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def warehouse_location_params
      params.require(:warehouse_location).permit(:warehouse_id, :customer_id, :name, :height, :width, :depth, :type, :kind, :volume, :area, :pallet)
    end
end
