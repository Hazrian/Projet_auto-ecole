class UserMailer < ApplicationMailer

  default from: ENV["SENDER_ADDRESS"]

  def welcome_email(user)

    @user = user
    @url  = 'url'
    mail(to: @user.email, subject: 'Bienvenue !')
  end

end
