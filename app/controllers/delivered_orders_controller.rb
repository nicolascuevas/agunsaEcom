class DeliveredOrdersController < ApplicationController
  before_action :set_delivered_order, only: [:show, :edit, :update, :destroy]

  # GET /delivered_orders
  # GET /delivered_orders.json
  def index
    @delivered_orders = DeliveredOrder.all
  end

  # GET /delivered_orders/1
  # GET /delivered_orders/1.json
  def show
  end

  # GET /delivered_orders/new
  def new
    @delivered_order = DeliveredOrder.new
  end

  # GET /delivered_orders/1/edit
  def edit
  end

  # POST /delivered_orders
  # POST /delivered_orders.json
  def create
    @delivered_order = DeliveredOrder.new(delivered_order_params)

    respond_to do |format|
      if @delivered_order.save
        format.html { redirect_to @delivered_order, notice: 'Delivered order was successfully created.' }
        format.json { render :show, status: :created, location: @delivered_order }
      else
        format.html { render :new }
        format.json { render json: @delivered_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivered_orders/1
  # PATCH/PUT /delivered_orders/1.json
  def update
    respond_to do |format|
      if @delivered_order.update(delivered_order_params)
        format.html { redirect_to @delivered_order, notice: 'Delivered order was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivered_order }
      else
        format.html { render :edit }
        format.json { render json: @delivered_order.errors, status: :unprocessable_entity }
      end
    end
  end

  def import_agunsa_delivered_orders
    @customer = Customer.find(params[:customer_id])
    DeliveredOrder.import_agunsa_delivered_orders(@customer)

  end
  

  # DELETE /delivered_orders/1
  # DELETE /delivered_orders/1.json
  def destroy
    @delivered_order.destroy
    respond_to do |format|
      format.html { redirect_to delivered_orders_url, notice: 'Delivered order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivered_order
      @delivered_order = DeliveredOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delivered_order_params
      params.require(:delivered_order).permit(:customer_id, :warehouse_id, :distribution_center_out_date, :digitation_date, :customer_visit_date, :order_programmed_date, :delivery_number, :picking_order_number, :customer_client_id, :delivery_backup_document, :delivery_aditional_backup_document, :delivery_observation, :order_number, :order_backup_document, :aditional_order_backup_document, :order_observation, :delivery_route_number)
    end
end
