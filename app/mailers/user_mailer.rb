class UserMailer < ApplicationMailer

  default from: 'no-reply@monsite.fr'

  def welcome_email(user)
    require 'addressable/uri'
    
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = url_for controller: 'registrations', action: 'new', host: 'localhost', port: '3000'

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue !')
  end

end
