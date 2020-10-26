class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @products = @products.where("product_code LIKE ?", "%"+params[:sku]+"%") if params[:sku].present?
    @products = @products.where(customer_id: params[:customer_id]) if params[:customer_id].present?
    @products = @products.where(units_per_box: params[:units_per_box]) if params[:units_per_box].present?
    @products = @products.where("name ILIKE ?", "%"+params[:name]+"%") if params[:name].present?

    @products = @products.where("weight ILIKE ?", "%"+params[:weight]+"%") if params[:weight].present?
    @products = @products.where("width ILIKE ?", "%"+params[:width]+"%") if params[:width].present?
    @products = @products.where("height ILIKE ?", "%"+params[:height]+"%") if params[:height].present?
    @products = @products.where("depth ILIKE ?", "%"+params[:depth]+"%") if params[:depth].present?


    @products = @products.order(name: :desc).paginate(page: params[:page], per_page: 50)

  end

  def sku_finder

  end

  # GET /products/1
  # GET /products/1.json
  def show
    @stocks = @product.stocks
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Producto Creado Correctamente.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Producto Guardado Correctamente.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def import_agunsa_products
    @customer = Customer.find(params[:customer_id])
    @products = AgunsaManager::GetProducts.call(@customer.client_code)
    @products.each do |product_info|
      Product.where(
            customer_id: @customer.id,
            product_code: product_info['codigo_producto'].tr(" ", "")
      ).first_or_initialize do |product|
        product.name = product_info['nombre']
        product.super_family =  product_info['nombre_superfamilia_cliente']
        product.family =  product_info['nombre_familia_cliente']
        product.sub_family =  product_info['nombre_subfamilia_cliente']
        product.liters = product_info['litros_producto'].to_f
        product.weight = product_info['kilos_caja'].to_f
        product.height = product_info['alto_caja'].to_f
        product.width = product_info['ancho_caja'].to_f
        product.depth = product_info['largo_caja'].to_f
        product.units_per_box = product_info['unidades_por_caja'].to_i
        product.items_per_box = product_info['unidades_por_caja'].to_i
        product.state = "ACTIVO"
        product.boxes_per_pallet_floor = product_info['cajas_por_pata'].to_i
        product.floors_per_pallet = product_info['patas_por_pallet'].to_i
        product.boxes_per_pallet = product_info['cajas_por_pallet'].to_i
        product.unit_type = product_info['unidad']
        product.customer_price = product_info['valor_cliente']
        product.alternative_code = product_info['codigo-alternativo']
        product.save
      end
    end

  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Producto Eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:customer_id, :product_code, :name, :super_family, :family, :sub_family, :is_expire, :liters, :state, :units_per_box, :weight, :height, :width, :depth, :boxes_per_pallet, :boxes_per_pallet_floor)
    end
end
