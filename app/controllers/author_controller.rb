class AuthorController < ApplicationController


  def index
    @authors = Author.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    @author = Author.find(params[:id])
    if @author.update_attributes(author_params) 
      flash[:success] = ""
      redirect_to authors_path
    else
      render :edit
    end
  end

  private

  def author_params
    params.require(:author).permit(:name, :description)
  end
end
