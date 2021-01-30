class Instrument < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true
  belongs_to :open_mic
end
