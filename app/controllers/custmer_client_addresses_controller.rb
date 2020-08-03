class CustmerClientAddressesController < ApplicationController
  before_action :set_custmer_client_address, only: [:show, :edit, :update, :destroy]

  # GET /custmer_client_addresses
  # GET /custmer_client_addresses.json
  def index
    @custmer_client_addresses = CustmerClientAddress.all
  end

  # GET /custmer_client_addresses/1
  # GET /custmer_client_addresses/1.json
  def show
  end

  # GET /custmer_client_addresses/new
  def new
    @custmer_client_address = CustmerClientAddress.new
  end

  # GET /custmer_client_addresses/1/edit
  def edit
  end

  # POST /custmer_client_addresses
  # POST /custmer_client_addresses.json
  def create
    @custmer_client_address = CustmerClientAddress.new(custmer_client_address_params)

    respond_to do |format|
      if @custmer_client_address.save
        format.html { redirect_to @custmer_client_address, notice: 'Custmer client address was successfully created.' }
        format.json { render :show, status: :created, location: @custmer_client_address }
      else
        format.html { render :new }
        format.json { render json: @custmer_client_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custmer_client_addresses/1
  # PATCH/PUT /custmer_client_addresses/1.json
  def update
    respond_to do |format|
      if @custmer_client_address.update(custmer_client_address_params)
        format.html { redirect_to @custmer_client_address, notice: 'Custmer client address was successfully updated.' }
        format.json { render :show, status: :ok, location: @custmer_client_address }
      else
        format.html { render :edit }
        format.json { render json: @custmer_client_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custmer_client_addresses/1
  # DELETE /custmer_client_addresses/1.json
  def destroy
    @custmer_client_address.destroy
    respond_to do |format|
      format.html { redirect_to custmer_client_addresses_url, notice: 'Custmer client address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custmer_client_address
      @custmer_client_address = CustmerClientAddress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custmer_client_address_params
      params.require(:custmer_client_address).permit(:customer_client_id, :commune_id, :street, :number, :address_detail, :lat, :long)
    end
end
