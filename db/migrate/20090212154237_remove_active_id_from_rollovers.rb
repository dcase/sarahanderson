class RemoveActiveIdFromRollovers < ActiveRecord::Migration
  def self.up
    remove_column :rollovers, :active_id
  end

  def self.down
    add_column :rollovers, :active_id, :integer
  end
end
