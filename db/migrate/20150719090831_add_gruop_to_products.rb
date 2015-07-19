class AddGruopToProducts < ActiveRecord::Migration
  def change
    add_column :products, :group, :string
    add_column :products, :subgroup, :string
  end
end
