class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :session_limitable, :timeoutable, :trackable

  belongs_to :role

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :role, presence: true
end
