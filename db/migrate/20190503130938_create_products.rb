class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :group
      t.string :description
      t.string :content
      t.timestamps
    end
  end
end
