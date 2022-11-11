class AddStuffsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :long_description_en, :text
    add_column :products, :long_description_fr, :text
    add_column :products, :long_description_nl, :text
    add_column :products, :long_description_de, :text
    add_column :products, :cta_en, :string
    add_column :products, :cta_fr, :string
    add_column :products, :cta_nl, :string
    add_column :products, :cta_de, :string
    add_column :products, :long_cta_en, :string
    add_column :products, :long_cta_fr, :string
    add_column :products, :long_cta_nl, :string
    add_column :products, :long_cta_de, :string
  end
end
