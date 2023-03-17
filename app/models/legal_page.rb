class LegalPage < ApplicationRecord
  has_rich_text :content_de
  has_rich_text :content_en
  has_rich_text :content_fr
  has_rich_text :content_nl
  before_create :generate_path


  def generate_path
    slug = self.name.dup.parameterize
  end
end
