class Public::GenresController < ApplicationController

  def index
    # @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    @works = Work.all.order(:date)
  end

end
