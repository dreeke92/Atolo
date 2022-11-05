class AddInformationsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :learnings_en, :text
    add_column :products, :learnings_fr, :text
    add_column :products, :learnings_nl, :text
    add_column :products, :learnings_de, :text
    add_column :products, :practice_en, :text
    add_column :products, :practice_fr, :text
    add_column :products, :practice_nl, :text
    add_column :products, :practice_de, :text
    rename_column :products, :name, :name_en
    rename_column :products, :description, :description_en
    rename_column :products, :subtitle, :subtitle_en
  end
end
