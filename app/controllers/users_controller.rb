class UsersController < ApplicationController
  before_action :user_is_user_to_show, only: [:show]
  before_action :user_is_admin, only: [:index]
  def index
  end

  def show
    @user = User.find(params['id'])
  end

  private

  def user_is_user_to_show
    unless current_user == User.find(params[:id])
      flash[:error] = "Tu ne peux pas accéder aux profils des autres utilisateurs"
      redirect_to :root
    end
  end
end
