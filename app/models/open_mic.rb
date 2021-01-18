class OpenMic < ApplicationRecord
  has_many :instruments
  has_many :comments
  has_many :updates
  has_many :supports
  has_many :missed_connections
  has_many :users, through: :comments
  has_many :users, through: :missed_connections
  has_many :users, through: :supports
  has_many :users, through: :updates

end
