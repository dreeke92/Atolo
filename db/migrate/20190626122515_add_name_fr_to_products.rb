class AddNameFrToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :name_fr, :string
  end
end
