class Product < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :name_en, presence: true, uniqueness: true
  validates :group, presence: true
  validates :description_en, presence: true
  # validates :image, presence: true, uniqueness: true
end
