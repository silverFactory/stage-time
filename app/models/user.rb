class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true
  validates :password, confirmation: { case_sensitive: true }
  validates :username, uniqueness: true
  validates :stage_name, presence: true

  has_many :comments
  has_many :hosts
  has_many :supports
  has_many :updates
  has_many :open_mics, through: :hosts
  has_many :open_mics, through: :supports
  has_many :open_mics, through: :updates

end
