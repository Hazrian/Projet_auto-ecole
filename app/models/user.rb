class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: :true
  validates :firstname, presence: :true

  before_save :make_uppercase
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  def make_uppercase
    self.name.upcase!
    self.firstname.capitalize!
  end

  private :make_uppercase
end
