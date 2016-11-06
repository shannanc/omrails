class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
  #       :recoverable, :rememberable, :trackable, :validatable

  has_many :tweets

  validates :username, presence: true, uniqueness: true, length: {minimum: 6}
  validates :firstname, presence: true
  validates :lastname, presence: true 
end
