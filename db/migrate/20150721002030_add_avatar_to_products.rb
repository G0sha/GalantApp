class AddAvatarToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image, :string
    remove_column :products, :image_url, :string
  end
end
