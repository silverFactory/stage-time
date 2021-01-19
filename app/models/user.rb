class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true
  validates :password, confirmation: { case_sensitive: true }

  has_many :comments
  has_many :missed_connections
  has_many :supports
  has_many :updates
  has_many :open_mics, through: :missed_connections
  has_many :open_mics, through: :supports
  has_many :open_mics, through: :updates

end
