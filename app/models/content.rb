class Content < ApplicationRecord
  has_rich_text :content_en
  has_rich_text :content_fr
  has_rich_text :content_de
  has_rich_text :content_nl



  def translate(locale)
    if self && self.content_en.body
      eval("self.content_#{locale}.body") ? eval("self.content_#{locale}") : self.content_en
    end
  end

end
