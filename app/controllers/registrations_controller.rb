class RegistrationsController < Devise::RegistrationsController

  protected

    def after_update_path_for(resource)
      user_path(resource)
    end
    
  private

  def sign_up_params
    params.require(:user).permit(
      :firstname,
      :name,
      :email,
      :phone_number,
      :city, :zip_code,
      :street,
      :street_number,
      :password,
      :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(
      :firstname,
      :name,
      :email,
      :phone_number,
      :city, :zip_code,
      :street,
      :street_number,
      :password,
      :password_confirmation,
      :current_password)

  end
end
