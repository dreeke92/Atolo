class Product < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true
  validates :group, presence: true
  validates :description, presence: true
  # validates :image, presence: true, uniqueness: true
end
