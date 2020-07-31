class CustomerClientsController < ApplicationController
  before_action :set_customer_client, only: [:show, :edit, :update, :destroy]

  # GET /customer_clients
  # GET /customer_clients.json
  def index
    @customer_clients = CustomerClient.all
  end

  # GET /customer_clients/1
  # GET /customer_clients/1.json
  def show
  end

  # GET /customer_clients/new
  def new
    @customer_client = CustomerClient.new
  end

  # GET /customer_clients/1/edit
  def edit
  end

  # POST /customer_clients
  # POST /customer_clients.json
  def create
    @customer_client = CustomerClient.new(customer_client_params)

    respond_to do |format|
      if @customer_client.save
        format.html { redirect_to @customer_client, notice: 'Customer client was successfully created.' }
        format.json { render :show, status: :created, location: @customer_client }
      else
        format.html { render :new }
        format.json { render json: @customer_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_clients/1
  # PATCH/PUT /customer_clients/1.json
  def update
    respond_to do |format|
      if @customer_client.update(customer_client_params)
        format.html { redirect_to @customer_client, notice: 'Customer client was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_client }
      else
        format.html { render :edit }
        format.json { render json: @customer_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_clients/1
  # DELETE /customer_clients/1.json
  def destroy
    @customer_client.destroy
    respond_to do |format|
      format.html { redirect_to customer_clients_url, notice: 'Customer client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_client
      @customer_client = CustomerClient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_client_params
      params.require(:customer_client).permit(:customer_id, :name, :last_name, :identifier, :email, :phone)
    end
end
