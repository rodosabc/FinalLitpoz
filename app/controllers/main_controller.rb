class MainController < ApplicationController
  def index
    @holidays.each do |holiday|
      current_date = (Time.now.month.to_s + Time.now.day.to_s).to_i
      if current_date <= holiday.date
        @holiday = holiday
        @poems = @holiday.poems.page(params[:page]).per_page(5)
      end
    end

  end
end