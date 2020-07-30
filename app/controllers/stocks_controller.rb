class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :destroy]

  # GET /stocks
  # GET /stocks.json
  def index
    @stocks = Stock.all.paginate(page: params[:page], per_page: 50)
  end

  # GET /stocks/1
  # GET /stocks/1.json
  def show
  end

  # GET /stocks/new
  def new
    @stock = Stock.new
  end

  # GET /stocks/1/edit
  def edit
  end

  # POST /stocks
  # POST /stocks.json
  def create
    @stock = Stock.new(stock_params)

    respond_to do |format|
      if @stock.save
        format.html { redirect_to @stock, notice: 'Stock was successfully created.' }
        format.json { render :show, status: :created, location: @stock }
      else
        format.html { render :new }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stocks/1
  # PATCH/PUT /stocks/1.json
  def update
    respond_to do |format|
      if @stock.update(stock_params)
        format.html { redirect_to @stock, notice: 'Stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock }
      else
        format.html { render :edit }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  def import_agunsa_stock
    @stock = AgunsaManager::GetStock.call()
    number = 1
    @stock.each do |stock_data|
      @warehouse_location = WarehouseLocation.where(name: stock_data['codigo_ubicacion']).first
      @product = @warehouse_location.customer.products.where("LOWER(product_code) LIKE LOWER(?)", "%#{stock_data['codigo_producto'].tr(" ", "")}%").first
      puts "Numero: #### #{number}"
      number +=1
      if !@warehouse_location
        puts "####333#####"
      end
      if !@product
      puts "####333#####"
        puts stock_data['codigo_producto']
      end
      if @warehouse_location.stocks.where(warehouse_location_id: @warehouse_location.id, product_id: @product.id).count > 0
        puts "######repetidooo######"
        puts @product.id
        puts stock_data['codigo_ubicacion']
        puts "######repetidooo######"
      end
      @warehouse_location.stocks.find_or_initialize_by({  
        warehouse_location_id: @warehouse_location.id,
        product_id: @product.id,
        lot_code: stock_data['Codigo_lote'].tr(" ", ""),
        lot_elaboration_date: stock_data['Fecha_elaboracion_lote'],
        lot_expiration_date: stock_data['Fecha_vencimiento_lote']
      }) do |stock|
        stock.quantity = stock_data['cantidad_producto']
        stock.incoming_quantity = stock_data['cantidad_producto_entrando']
        stock.outgoing_quantity = stock_data['cantidad_producto_saliendo']
        stock.blocked_quantity = stock_data['Cantidad_producto_bloqueado']
        stock.save
      end
    end

  end

  # DELETE /stocks/1
  # DELETE /stocks/1.json
  def destroy
    @stock.destroy
    respond_to do |format|
      format.html { redirect_to stocks_url, notice: 'Stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock
      @stock = Stock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stock_params
      params.require(:stock).permit(:product_id, :warehouse_location_id, :quantity, :incoming_quantity, :outgoing_quantity, :blocked_quantity, :lot_code, :lot_elaboration_date, :lot_expiration_date)
    end
end
