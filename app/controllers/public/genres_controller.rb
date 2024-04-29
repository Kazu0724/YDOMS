class Public::GenresController < ApplicationController
  before_action :authenticate_employee!

  def index
    # @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    @works = Work.all.order(:date)
  end

end
