class OpenMic < ApplicationRecord
  has_many :instruments
  has_many :comments
  has_many :updates
  has_many :supports
  has_many :hosts
  has_many :users, through: :comments
  has_many :users, through: :hosts
  has_many :users, through: :supports
  has_many :users, through: :updates

end
