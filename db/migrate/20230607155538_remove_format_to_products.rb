class RemoveFormatToProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :target_group_en, :string
    remove_column :products, :target_group_fr, :string
    remove_column :products, :target_group_nl, :string
    remove_column :products, :target_group_de, :string
    remove_column :products, :format_en, :string
    remove_column :products, :format_fr, :string
    remove_column :products, :format_nl, :string
    remove_column :products, :format_de, :string
    remove_column :products, :languages_en, :string
    remove_column :products, :languages_fr, :string
    remove_column :products, :languages_nl, :string
    remove_column :products, :languages_de, :string
    remove_column :products, :quote, :text
    remove_column :products, :quote_author, :string
    add_column :products, :quote_en, :text
    add_column :products, :quote_fr, :text
    add_column :products, :quote_nl, :text
    add_column :products, :quote_de, :text
    add_column :products, :quote_author_en, :string
    add_column :products, :quote_author_fr, :string
    add_column :products, :quote_author_nl, :string
    add_column :products, :quote_author_de, :string
  end
end
