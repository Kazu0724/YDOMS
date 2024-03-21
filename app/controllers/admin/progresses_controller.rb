class Admin::ProgressesController < ApplicationController
  def index
    @works = Work.all.order(:date)
    @genres = Genre.all
  end
end
