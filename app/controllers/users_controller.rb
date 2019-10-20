class UsersController < ApplicationController
  def index
    render json: @users = User.all.reject{|c| c == current_user}.map{|u| [name: u.name, id: u.id, online:u.online]}
  end

  def show
    render json: @user = User.find(params[:id]).online
  end
end
