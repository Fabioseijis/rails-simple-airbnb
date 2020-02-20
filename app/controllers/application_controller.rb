class ApplicationController < ActionController::Base
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flats.all
  end

  def show; end

  def new
    @flat = Flat.new
  end

  def edit; end

  private

  def flat_params
    param.require(:flats).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
