class Admin::GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash[:success] = "ジャンルが作成されました。"
      redirect_to admin_genres_path
    else
      flash.now[:error] = "ジャンルが作成できませんでした。"
      @genres = Genre.all
      render 'index'
    end
  end

  def show
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      flash[:success] = "ジャンル名が更新されました。"
      redirect_to admin_genres_path
    else
      flash.now[:error] = "ジャンル名を入力してください。"
      @genre = Genre.find(params[:id])
      render 'edit'
    end
  end

end
