class AddQuoteToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :quote, :text
    add_column :products, :quote_author, :string
    add_column :products, :practicality_1_en, :string
    add_column :products, :practicality_2_en, :string
    add_column :products, :practicality_3_en, :string
    add_column :products, :practicality_4_en, :string
    add_column :products, :practicality_5_en, :string
    add_column :products, :practicality_6_en, :string
    add_column :products, :practicality_1_fr, :string
    add_column :products, :practicality_2_fr, :string
    add_column :products, :practicality_3_fr, :string
    add_column :products, :practicality_4_fr, :string
    add_column :products, :practicality_5_fr, :string
    add_column :products, :practicality_6_fr, :string
    add_column :products, :practicality_1_nl, :string
    add_column :products, :practicality_2_nl, :string
    add_column :products, :practicality_3_nl, :string
    add_column :products, :practicality_4_nl, :string
    add_column :products, :practicality_5_nl, :string
    add_column :products, :practicality_6_nl, :string
    add_column :products, :practicality_1_de, :string
    add_column :products, :practicality_2_de, :string
    add_column :products, :practicality_3_de, :string
    add_column :products, :practicality_4_de, :string
    add_column :products, :practicality_5_de, :string
    add_column :products, :practicality_6_de, :string
    add_column :products, :target_group_en, :string
    add_column :products, :target_group_fr, :string
    add_column :products, :target_group_nl, :string
    add_column :products, :target_group_de, :string
    add_column :products, :format_en, :string
    add_column :products, :format_fr, :string
    add_column :products, :format_nl, :string
    add_column :products, :format_de, :string
    add_column :products, :languages_en, :string
    add_column :products, :languages_fr, :string
    add_column :products, :languages_nl, :string
    add_column :products, :languages_de, :string
  end
end
