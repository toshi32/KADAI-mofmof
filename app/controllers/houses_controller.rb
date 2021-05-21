class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update, :destroy]

  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
      if @house.save
        redirect_to houses_path,notice: "物件を登録しました"
      else
        render :new
      end
    end
  end

  def edit
  end

  def show
    @stations = @house.stations
  end

  def destroy
    @house.destroy
    redirect_to houses_path, notice: '物件を削除しました'
  end

  def house_params
    params.require(:house).permit(:property_name,:price,:street_address,:age_building,:remarks)
  end
end
