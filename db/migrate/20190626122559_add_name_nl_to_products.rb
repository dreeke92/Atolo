class AddNameNlToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :name_nl, :string
  end
end
