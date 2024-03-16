class Admin::WorksController < ApplicationController
  def index
    @genres = Genre.all
  end

end
