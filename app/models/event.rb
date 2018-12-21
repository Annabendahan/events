class Event < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :users, through: :participation
  monetize :price_cents
end
