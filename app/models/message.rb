class Message < ApplicationRecord
  validates :email, presence: true
  mount_uploader :attachment, PhotoUploader

end
