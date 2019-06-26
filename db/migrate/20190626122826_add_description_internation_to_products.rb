class AddDescriptionInternationToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :description_nl, :string
    add_column :products, :description_de, :string
    add_column :products, :description_fr, :string
  end
end
