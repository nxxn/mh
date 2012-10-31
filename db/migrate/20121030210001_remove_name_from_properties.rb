class RemoveNameFromProperties < ActiveRecord::Migration
  def up
    remove_column :spree_property_translations, :name
  end

  def down
    add_column :spree_property_translations, :name, :string
  end
end
