class AddSubtitleToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :subtitle, :string
    add_column :products, :subtitle_nl, :string
    add_column :products, :subtitle_fr, :string
    add_column :products, :subtitle_de, :string
  end
end
