class SearchesController < ApplicationController
  helper_method :current_user
  
  def index
    current_user.recent_searches.prepend(params[:query]) if params[:query].present?
  end

  private
    def current_user
      # Mock current_user for example purpose
      @current_user ||= User.first
    end
end
