class Role < ApplicationRecord
  has_many :users, inverse_of: :role, dependent: :destroy

  validates :code, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true
end
