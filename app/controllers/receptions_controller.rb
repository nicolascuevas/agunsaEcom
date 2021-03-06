class ReceptionsController < ApplicationController
  before_action :set_reception, only: [:show, :edit, :update, :destroy]

  # GET /receptions
  # GET /receptions.json
  def index
    @receptions = Reception.all
    @receptions = @receptions.where(customer_id: params[:customer_id]) if params[:customer_id].present?
    @receptions = @receptions.where("rrp_number = #{params[:rrp]}") if params[:rrp].present?
    @receptions = @receptions.where("reception_number = #{params[:re]}") if params[:re].present?
    @receptions = @receptions.where("recepcion_order_number = #{params[:or]}") if params[:or].present?
    @receptions = @receptions.where("recepcion_backup_document ILIKE ?", "%"+params[:backup_document]+"%") if params[:backup_document].present?

    @receptions = @receptions.order(reception_number: :desc).paginate(page: params[:page], per_page: 50)
  end

  # GET /receptions/1
  # GET /receptions/1.json
  def show
    @reception_products = @reception.reception_products
  end

  # GET /receptions/new
  def new
    @reception = Reception.new
  end

  # GET /receptions/1/edit
  def edit
  end

  # POST /receptions
  # POST /receptions.json
  def create
    @reception = Reception.new(reception_params)

    respond_to do |format|
      if @reception.save
        format.html { redirect_to @reception, notice: 'Reception was successfully created.' }
        format.json { render :show, status: :created, location: @reception }
      else
        format.html { render :new }
        format.json { render json: @reception.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receptions/1
  # PATCH/PUT /receptions/1.json
  def update
    respond_to do |format|
      if @reception.update(reception_params)
        format.html { redirect_to @reception, notice: 'Reception was successfully updated.' }
        format.json { render :show, status: :ok, location: @reception }
      else
        format.html { render :edit }
        format.json { render json: @reception.errors, status: :unprocessable_entity }
      end
    end
  end

  def import_agunsa_receptions
    @customer = Customer.find(params[:customer_id])
    Reception.import_agunsa_receptions(@customer)
  end

  # DELETE /receptions/1
  # DELETE /receptions/1.json
  def destroy
    @reception.destroy
    respond_to do |format|
      format.html { redirect_to receptions_url, notice: 'Reception was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reception
      @reception = Reception.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reception_params
      params.require(:reception).permit(:customer_id, :warehouse_id, :rrp_number, :guia_aga_o_fa, :customer_reference_document, :recepcion_backup_document, :start_unload, :finish_unload, :digitation_date, :reception_number, :origin, :recepcion_order_number, :reception_observation, :rrp_observation, :reception_order_observation, :container_seal, :recepcion_order_date, :reception_order_backup_document, :ctnr_code)
    end
end
