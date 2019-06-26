class AddContentInternationToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :content_nl, :string
    add_column :products, :content_de, :string
    add_column :products, :content_fr, :string
  end
end
