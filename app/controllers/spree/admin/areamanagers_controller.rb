module Spree
  module Admin

class AreamanagersController < Spree::Admin::BaseController

  # GET /spree/areamanagers
  def index
    @areamanagers = Spree::Areamanager.all
  end

  # GET /spree/areamanagers/1
  def show
  end

  # GET /spree/areamanagers/new
  def new
    @areamanager = Spree::Areamanager.new
  end

  # GET /spree/areamanagers/1/edit
  def edit
  end

  # POST /spree/areamanagers
  def create
    @areamanager = Spree::Areamanager.new(admin_areamanager_params)

    if @areamanager.save
      redirect_to admin_areamanagers_url, notice: 'Areamanager was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /spree/areamanagers/1
  def update
    if @spree_areamanager.update(admin_areamanager_params)
      redirect_to @areamanager, notice: 'Areamanager was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /spree/areamanagers/1
  def destroy
    @areamanager = Areamanager.find(params[:id])
    @areamanager.destroy
    redirect_to admin_areamanagers_url, notice: 'Areamanager was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_admin_areamanager
      @areamanager = Spree::Areamanager.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
  def admin_areamanager_params
      params.require(:areamanager).permit(:zipcode, :zone)
    end
end
  end
end

