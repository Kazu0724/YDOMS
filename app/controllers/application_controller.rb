class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :genre_all, except: :destroy

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:last_name, :first_name, :last_name_kana, :first_name_kana, :employee_number, :phone_number, :car_number])
  end

  def genre_all
    @genres = Genre.all
  end

end
