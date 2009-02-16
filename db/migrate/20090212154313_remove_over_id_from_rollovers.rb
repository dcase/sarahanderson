class RemoveOverIdFromRollovers < ActiveRecord::Migration
  def self.up
    remove_column :rollovers, :over_id
  end

  def self.down
    add_column :rollovers, :over_id, :integer
  end
end
