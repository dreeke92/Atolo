class CreateTestimonials < ActiveRecord::Migration[6.1]
  def change
    create_table :testimonials do |t|
      t.string :category
      t.string :logo
      t.string :company_name
      t.string :author
      t.text :content_en
      t.text :content_de
      t.text :content_fr
      t.text :content_nl

      t.timestamps
    end
    add_column :titles, :unique_key, :string
    add_column :contents, :unique_key, :string
  end
end
