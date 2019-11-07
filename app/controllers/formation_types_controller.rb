class FormationTypesController < ApplicationController
  before_action :user_is_admin, only: [:new, :create, :destroy, :edit, :update]

  def new
    @formation_type = FormationType.new
  end

  def create
    @formation_type = FormationType.new(
      name: params[:formation_type_name],
      place_number: params[:formation_type_place_number]
    )

    if @formation_type.save
      flash[:notice] = "Le nouveau type de formation a bien été ajouté !"
      redirect_to @formation_type
    else
      flash[:warning] = "Le nouveau type de formation n'a pas pu être ajouté !"
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
    @user = FormationType.find(params['id'])
  end

  def index
    @formation_types = FormationType.all
  end

  private

  def user_is_admin
    unless current_user.admin
      flash[:error] = "Tu ne peux pas accéder à la liste des utilisateurs"
      redirect_to :root
    end
  end
end
