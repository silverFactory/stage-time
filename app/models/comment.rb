class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :open_mic
  belongs_to :missed_connection
  belongs_to :support

end
