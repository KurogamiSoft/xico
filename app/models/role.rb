class Role < ApplicationRecord
  has_many :users

  validates :code, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true
end
