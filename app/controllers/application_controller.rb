class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?
before_action :ransack_search


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  def ransack_search
    @q = Article.ransack(search_params)
  end
  
  private
  def search_params
    params.permit(:q)
  end
end
