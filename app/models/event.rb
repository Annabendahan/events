class Event < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :orders
  has_many :users, through: :orders
  monetize :price_cents




def has_ordered?(user)
    self.orders.find_by(user_id: user.id)
  end

end
