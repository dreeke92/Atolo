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

  has_rich_text :target_group_en
  has_rich_text :target_group_fr
  has_rich_text :target_group_nl
  has_rich_text :target_group_de

  has_rich_text :format_en
  has_rich_text :format_fr
  has_rich_text :format_nl
  has_rich_text :format_de

  has_rich_text :languages_en
  has_rich_text :languages_fr
  has_rich_text :languages_nl
  has_rich_text :languages_de

  def practicalities_count(locale)
    count = 0
    [1, 2, 3, 4, 5, 6].each do |number|
      if eval("self.practicality_#{number}_#{locale}")
        count += 1
      end
    end
    return count
  end

  def divisible_by_3? (locale)
    practicalities_count(locale) % 3 == 0
  end



end
