class HolidaysController < ApplicationController

  def index
    @holidays = Holiday.all
    @poems = Poem.all
  end

  def new
    @holiday = Holiday.new
  end

  def create
    @holiday = Holiday.new(holiday_params)
    @holiday.save
  end

  def edit
    @holiday = Holiday.find(params[:id])
  end

  def update
    @holiday = Holiday.find(params[:id])
    @holiday.update(holiday_params)
  end

  def destroy
    @holiday = Holiday.find(params[:id])
    @holiday.destroy
  end
  private

  def holiday_params
    @classname = Holiday.class.to_s
    params.require(:holiday).permit(:text,:date,:classname)
  end


end