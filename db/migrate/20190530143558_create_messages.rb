class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :content
      t.boolean :copy
      t.boolean :robot

      t.timestamps
    end
  end
end
