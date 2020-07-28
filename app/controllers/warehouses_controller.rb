class WarehousesController < ApplicationController
  before_action :set_warehouse, only: [:show, :edit, :update, :destroy]

  # GET /warehouses
  # GET /warehouses.json
  def index
    @warehouses = Warehouse.all
  end

  # GET /warehouses/1
  # GET /warehouses/1.json
  def show
  end

  # GET /warehouses/new
  def new
    @warehouse = Warehouse.new
  end

  # GET /warehouses/1/edit
  def edit
  end

  # POST /warehouses
  # POST /warehouses.json
  def create
    @warehouse = Warehouse.new(warehouse_params)

    respond_to do |format|
      if @warehouse.save
        format.html { redirect_to @warehouse, notice: 'Warehouse was successfully created.' }
        format.json { render :show, status: :created, location: @warehouse }
      else
        format.html { render :new }
        format.json { render json: @warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /warehouses/1
  # PATCH/PUT /warehouses/1.json
  def update
    respond_to do |format|
      if @warehouse.update(warehouse_params)
        format.html { redirect_to @warehouse, notice: 'Warehouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @warehouse }
      else
        format.html { render :edit }
        format.json { render json: @warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warehouses/1
  # DELETE /warehouses/1.json
  def destroy
    @warehouse.destroy
    respond_to do |format|
      format.html { redirect_to warehouses_url, notice: 'Warehouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import_agunsa_warehouses
    @warehouses = AgunsaManager::GetWarehouses.call()
    @warehouses.each do |warehouse_data|
      @customer = Customer.where( "client_code like (?)", warehouse_data['codigo_cliente'].tr(" ", "") ).first
      if @customer
        @customer.warehouses.create_or_find_by({ name: warehouse_data['codigo_cliente'].tr(" ", "") })
      else
        puts "No hay Cliente #{warehouse_data['codigo_cliente'].tr(" ", "")}"
      end
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warehouse
      @warehouse = Warehouse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def warehouse_params
      params.require(:warehouse).permit(:customer_id, :name)
    end
end
