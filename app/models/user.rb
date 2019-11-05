class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: :true
  validates :firstname, presence: :true

  def address
    address = self.street_number + " " + self.street + "\n" + self.zip_code + " " + self.city
  end
end
