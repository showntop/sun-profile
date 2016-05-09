class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #before_filter :get_current_user

  def get_current_user
  	if @current_user == nil
      if params[:user_id]
        @current_user = User.find(params[:user_id])
      elsif session[:user_id]
        @current_user = User.find(session[:user_id])
      end
    else
      if params[:user_id] and params[:user_id].to_i != @current_user.id
        session[:user_id] = params[:user_id]
        @current_user = User.find(params[:user_id])
      elsif session[:user_id] and session[:user_id].to_i != @current_user.id
        @current_user = User.find(session[:user_id])
      end
    end

    session[:user_id] = (@current_user ? @current_user.id : nil)
    @current_user
  end
end
