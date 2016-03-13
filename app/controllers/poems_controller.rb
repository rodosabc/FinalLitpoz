class PoemsController < ApplicationController

  before_action :find_poem_id, only: [:show,:edit,:update,:destroy]
  before_action :find_holiday_id, only: [:new,:create]

  def index
    @resource = define_source
    @poems = @resource.poems
  end

  def new
    @poems = Poem.new
  end

  def create
    @poem = @holiday.poems.create(poem_params)

    @poem.save
  end

  def show
  end

  def edit
  end

  def update
    @poem.update(poem_params)
  end

  def destroy
    @poem.destroy
  end

  private

  def find_poem_id
    @poem = Poem.find(params[:poem_id])
  end

  def find_holiday_id
    @holiday = Holiday.find(params[:holiday_id])
  end

  def poem_params
    params.require(:poem).permit(:text)
  end

  def define_source
    if params[:author_id].present?
      return Author.find(params[:author_id])
    end
    if params[:holiday_id].present?
      return Holiday.find(params[:holiday_id])
    end
  end
end