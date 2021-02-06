class OpenMic < ApplicationRecord
  validates :name, presence: true
  validates :genre, presence: true
  validates :location, length: {minimum: 15, too_short: "too concise, make sure the newbiesw can find it!"}
  validates :day, presence: true
  validates :time, presence: true
  validates :stage_time, presence: true
  validates :sign_up_protocol, presence: true
  validates :cover, presence: true
  validates :drink_or_food_minimum, presence: true

  has_many :instruments
  has_many :comments
  has_many :updates
  has_many :supports
  has_many :hosts
  has_many :users, through: :comments
  has_many :users, through: :hosts
  has_many :users, through: :supports
  has_many :users, through: :updates

  def host_names
    @host_names = []
    self.hosts.each do |host|
      @host_names << User.find(host.id).stage_name
    end
    @host_names
  end
  def host?(user_id)
    is_host = false
    self.hosts.each do |host|
      if host.user_id == user_id
        is_host = true
      end
    end
    is_host
  end
end
