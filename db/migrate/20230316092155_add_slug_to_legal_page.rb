class AddSlugToLegalPage < ActiveRecord::Migration[6.1]
  def change
    add_column :legal_pages, :slug, :string
  end
end
