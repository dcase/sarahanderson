class RemoveInactiveIdFromRollovers < ActiveRecord::Migration
  def self.up
    remove_column :rollovers, :inactive_id
  end

  def self.down
    add_column :rollovers, :inactive_id, :integer
  end
end
