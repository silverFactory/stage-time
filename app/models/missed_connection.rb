class MissedConnection < ApplicationRecord
  belongs_to :open_mic
  belongs_to :user
  has_many :comments
end
