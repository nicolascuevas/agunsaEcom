class WarehouseLocationsController < ApplicationController
  before_action :set_warehouse_location, only: [:show, :edit, :update, :destroy]

  # GET /warehouse_locations
  # GET /warehouse_locations.json
  def index
    @warehouse_locations = WarehouseLocation.all.paginate(page: params[:page], per_page: 50)
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

    def import_agunsa_warehouse_locations
    @warehouse = Warehouse.find(params[:warehouse_id])
    @warehouse_locations = AgunsaManager::GetWarehouseLocations.call(@warehouse.name)
    @warehouse_locations.each do |location_info|
      @warehouse.warehouse_locations.find_or_initialize_by({
            name: location_info['codigo_ubicacion']
      }) do |warehouse_location|
        warehouse_location.customer_id = @warehouse.customer_id
        warehouse_location.height = location_info['alto'].to_f
        warehouse_location.width = location_info['ancho'].to_f
        warehouse_location.depth = location_info['profundidad'].to_f
        warehouse_location.location_type = location_info['tipo']
        warehouse_location.kind = location_info['forma']

        warehouse_location.save
      end
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
