class Comment < ApplicationRecord
  validates :body, length: {minimum: 10, too_short: "too short: say something useful please"}

  belongs_to :user
  belongs_to :support
end
