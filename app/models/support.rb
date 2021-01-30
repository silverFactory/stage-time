class Support < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  
  belongs_to :open_mic
  belongs_to :user
  has_many :comments
end
