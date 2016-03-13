class AuthorsController < ApplicationController

  def index
    @authors = Author.all
    @poems = Poem.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    @author.save
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
  end

  private

  def author_params
    @classname = Holiday.class.to_s
    params.require(:author).permit(:text,:date,:classname)
  end

  def all_authors
    @authors = Author.all
  end
end