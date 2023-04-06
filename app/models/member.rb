class Member < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_rich_text :description_en
  has_rich_text :description_fr
  has_rich_text :description_de
  has_rich_text :description_nl
end
