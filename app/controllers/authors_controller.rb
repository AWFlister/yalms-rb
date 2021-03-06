class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @authors = Author.new
  end

  def show
    @authors = Author.find params[:id]
  end

  def create
    @authors = Author.create name: params[:author][:name]
    @authors.save

    redirect_to authors_path
  end

  def edit
    @authors = Author.find params[:id]
  end

  def update
    @authors = Author.find params[:id]
    @authors.name = params[:author][:new_name]
    @authors.save

    redirect_to authors_path
  end

  def destroy
    @authors = Author.find params[:id]
    @authors.destroy

    redirect_to authors_path
  end
end
