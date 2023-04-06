class AddPhotoToMember < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :photo, :string
    add_column :members, :location, :string
    rename_column :members, :post, :role
  end
end
