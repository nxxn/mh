class AddCommentsToAddresses < ActiveRecord::Migration
  def self.up
      add_column :spree_addresses, :comments, :text
    end

    def self.down
      remove_column :spree_addresses, :comments
    end
end
