class Public::GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genres = Genre.all
    @genre = Genre.find(params[:id])
    @works = Work.all.order(:date)
  end

end
