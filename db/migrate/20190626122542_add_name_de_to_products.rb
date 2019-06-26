class AddNameDeToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :name_de, :string
  end
end
