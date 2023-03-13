class CreateLegalPages < ActiveRecord::Migration[6.1]
  def change
    create_table :legal_pages do |t|
      t.string :name

      t.timestamps
    end
  end
end
