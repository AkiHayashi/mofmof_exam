class EstatesController < ApplicationController
  before_action :set_estate, only: %i[show edit update destroy]

  def new
    @estate = Estate.new
    2.times { @estate.nearest_stations.build }
  end

  def confirm
    binding.irb
    @estate = Estate.new(estate_params)
    render :new if @estate.invalid?
  end

  def create

    @estate = Estate.new(estate_params)
    if params[:back]
      render :new
    else
      if @estate.save
        redirect_to estates_path, notice: "物件を登録しました"
      else
        render :new
      end
    end
  end

  def index
    @estates = Estate.all
  end

  def show
    @nearest_stations = @estate.nearest_stations
  end

  def edit
    3.times {@estate.nearest_stations.build}
  end

  def  update
    if @estate.update(estate_params)
      redirect_to estates_path, notice: "物件情報を編集しました"
    else  
      render :edit
    end
  end

  def destroy
    @estate.destroy
    redirect_to estates_path, notice:"物件を削除しました"
  end

  private
  def estate_params
    params.require(:estate).permit(
      :name, 
      :rent, 
      :address, 
      :age, 
      :content, 
      nearest_stations_attributes: %i{ 
        route 
        station
        walk_minutes 
        property_id
        id
        _destroy}
      )
  end

  def set_estate
    @estate = Estate.find(params[:id])
  end

end
