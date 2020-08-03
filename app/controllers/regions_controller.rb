class RegionsController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy, :index, :new, :create]
  before_action :set_region, only: [:show, :edit, :update, :destroy]

  # GET /regions
  # GET /regions.json
  def index
    @regions = @country.regions.all
  end

  # GET /regions/1
  # GET /regions/1.json
  def show
    @communes = @region.communes.all
  end

  # GET /regions/new
  def new
    @region = @country.regions.new
  end

  # GET /regions/1/edit
  def edit
  end

  # POST /regions
  # POST /regions.json
  def create
    @region = @country.regions.new(region_params)

    respond_to do |format|
      if @region.save
        format.html { redirect_to country_region_path(@country,@region), notice: 'Region was successfully created.' }
        format.json { render :show, status: :created, location: @region }
      else
        format.html { render :new }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regions/1
  # PATCH/PUT /regions/1.json
  def update
    respond_to do |format|
      if @region.update(region_params)
        format.html { redirect_to country_region_path(@country,@region), notice: 'Region was successfully updated.' }
        format.json { render :show, status: :ok, location: @region }
      else
        format.html { render :edit }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regions/1
  # DELETE /regions/1.json
  def destroy
    @region.destroy
    respond_to do |format|
      format.html { redirect_to country_regions_path(@country), notice: 'Region was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:country_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @region = @country.regions.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def region_params
      params.require(:region).permit(:name, :sil_code)
    end
end
