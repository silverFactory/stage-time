class Support < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  belongs_to :open_mic
  belongs_to :user
  has_many :comments

  scope :lend_a_hand, -> {where(lend_a_hand: true)}
  scope :missed_connection, -> {where(missed_connection: true)} 
end
