class Content < ApplicationRecord
  has_rich_text :content_en
  has_rich_text :content_fr
  has_rich_text :content_de
  has_rich_text :content_nl
end
