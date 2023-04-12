class Product < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :name_en, presence: true, uniqueness: true
  validates :group, presence: true
  # validates :description_en, presence: true
  # validates :image, presence: true, uniqueness: true
  has_rich_text :rich_description_en
  has_rich_text :rich_description_de
  has_rich_text :rich_description_fr
  has_rich_text :rich_description_nl

  has_rich_text :rich_long_description_en
  has_rich_text :rich_long_description_de
  has_rich_text :rich_long_description_fr
  has_rich_text :rich_long_description_nl

  has_rich_text :rich_learnings_en
  has_rich_text :rich_learnings_de
  has_rich_text :rich_learnings_fr
  has_rich_text :rich_learnings_nl

  has_rich_text :rich_practice_en
  has_rich_text :rich_practice_de
  has_rich_text :rich_practice_fr
  has_rich_text :rich_practice_nl


end
