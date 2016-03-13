class HolidaysController < ApplicationController

  before_action :find_holiday_id, only: [:show,:edit,:update,:destroy]

  def index
    @holidays = Holiday.all
    @poems = Poem.all
  end

  def new
    @holiday = Holiday.new
  end

  def show
  end

  def create
    @holiday = Holiday.new(holiday_params)
    @holiday.save
  end

  def edit
  end

  def update
    @holiday.update(holiday_params)
  end

  def destroy
    @holiday.destroy
  end

  private

  def find_holiday_id
    @holiday = Holiday.find(params[:id])
  end

  def holiday_params
    params.require(:holiday).permit(:text,:date,:classname)
  end


end