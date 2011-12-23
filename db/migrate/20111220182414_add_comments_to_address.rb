class AddCommentsToAddress < ActiveRecord::Migration
  def self.up
    add_column :addresses, :comments, :text
  end

  def self.down
    remove_column :addresses, :comments
  end
end
