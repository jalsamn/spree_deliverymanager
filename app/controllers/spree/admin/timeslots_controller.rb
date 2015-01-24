module Spree
  module Admin

class TimeslotsController <  Spree::Admin::BaseController
  before_action :set_timeslot, only: [:show, :edit, :update, :destroy]

  # GET /timeslots
  def index
    @timeslots = Spree::Timeslot.all
  end

  # GET /timeslots/1
  def show
  end

  # GET /timeslots/new
  def new
    @timeslot = Spree::Timeslot.new
  end

  # GET /timeslots/1/edit
  def edit
  end

  # POST /timeslots
  def create
    @timeslot = Spree::Timeslot.new(timeslot_params)

    if @timeslot.save
      redirect_to admin_timeslots_url, notice: 'Timeslot was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /timeslots/1
  def update
    if @timeslot.update(timeslot_params)
      redirect_to admin_timeslots_url, notice: 'Timeslot was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /timeslots/1
  def destroy
    @timeslot.destroy
    redirect_to admin_timeslots_url, notice: 'Timeslot was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timeslot
      @timeslot = Timeslot.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def timeslot_params
      params.require(:timeslot).permit(:ddate, :dtime)
    end
end
  end
end
