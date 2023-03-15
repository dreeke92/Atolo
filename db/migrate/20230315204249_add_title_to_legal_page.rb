class AddTitleToLegalPage < ActiveRecord::Migration[6.1]
  def change
    add_column :legal_pages, :title_en, :string
    add_column :legal_pages, :title_fr, :string
    add_column :legal_pages, :title_de, :string
    add_column :legal_pages, :title_nl, :string
  end
end
