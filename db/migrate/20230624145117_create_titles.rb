class CreateTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :titles do |t|
      t.string :page
      t.string :title_en
      t.string :title_de
      t.string :title_nl
      t.string :title_fr

      t.timestamps
    end
  end
end
