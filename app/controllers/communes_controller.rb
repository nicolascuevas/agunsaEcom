class CommunesController < ApplicationController
  before_action :set_country
  before_action :set_region
  before_action :set_commune, only: [:show, :edit, :update, :destroy]

  # GET /communes
  # GET /communes.json
  def index
    @communes = @region.communes.all
  end

  # GET /communes/1
  # GET /communes/1.json
  def show
  end

  # GET /communes/new
  def new
    @commune = @region.communes.new
  end

  # GET /communes/1/edit
  def edit
  end

  # POST /communes
  # POST /communes.json
  def create
    @commune = @region.communes.new(commune_params)

    respond_to do |format|
      if @commune.save
        format.html { redirect_to country_region_commune_path(@country, @region, @commune), notice: 'Commune was successfully created.' }
        format.json { render :show, status: :created, location: @commune }
      else
        format.html { render :new }
        format.json { render json: @commune.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communes/1
  # PATCH/PUT /communes/1.json
  def update
    respond_to do |format|
      if @commune.update(commune_params)
        format.html { redirect_to country_region_commune_path(@country, @region, @commune), notice: 'Commune was successfully updated.' }
        format.json { render :show, status: :ok, location: @commune }
      else
        format.html { render :edit }
        format.json { render json: @commune.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communes/1
  # DELETE /communes/1.json
  def destroy
    @commune.destroy
    respond_to do |format|
      format.html { redirect_to country_region_path(@country, @region), notice: 'Commune was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_country
      @country = Country.find(params[:country_id])
    end

    def set_region
      @region = @country.regions.find(params[:region_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_commune
      @commune = @region.communes.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commune_params
      params.require(:commune).permit(:region_id, :name, :sil_code)
    end
end
