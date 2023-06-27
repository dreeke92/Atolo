class Title < ApplicationRecord


  def translate(locale)
    if self && self.title_en
      eval("self.title_#{locale}") ? eval("self.title_#{locale}") : self.title_en
    end
  end
end
