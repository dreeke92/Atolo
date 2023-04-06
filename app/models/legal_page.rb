class LegalPage < ApplicationRecord
  has_rich_text :content_de
  has_rich_text :content_en
  has_rich_text :content_fr
  has_rich_text :content_nl
  before_create :generate_path


  def generate_path
    self.slug = self.name.dup.parameterize
  end

  def translate_title(locale)
    eval("self.title_#{locale}") ? eval("self.title_#{locale}") : (self.title_en ? self.title_en : self.name)
  end
end
