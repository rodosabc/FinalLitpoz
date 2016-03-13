class AuthorsController < ApplicationController
  before_action :find_author_id, only: [:show,:edit,:update,:destroy]

  def index
    @authors = Author.all
    @poems = Poem.all
  end

  def new
    @author = Author.new
  end

  def show
  end

  def create
    @author = Author.new(author_params)
    @author.save
  end

  def edit
  end

  def update
    @author.update(author_params)
  end

  def destroy
    @author.destroy
  end

  private

  def find_author_id
    @author = Author.find(params[:id])
  end

  def author_params
    @classname = Holiday.class.to_s
    params.require(:author).permit(:text,:date,:classname)
  end
end