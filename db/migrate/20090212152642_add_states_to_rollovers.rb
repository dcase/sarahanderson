class AddStatesToRollovers < ActiveRecord::Migration
  def self.up
    add_column :rollovers, :active_file_name, :string
    add_column :rollovers, :active_content_type, :string
    add_column :rollovers, :active_file_size, :integer
    add_column :rollovers, :active_updated_at, :datetime
    add_column :rollovers, :inactive_file_name, :string
    add_column :rollovers, :inactive_content_type, :string
    add_column :rollovers, :inactive_file_size, :integer
    add_column :rollovers, :inactive_updated_at, :datetime
    add_column :rollovers, :over_file_name, :string
    add_column :rollovers, :over_content_type, :string
    add_column :rollovers, :over_file_size, :integer
    add_column :rollovers, :over_updated_at, :datetime

  end

  def self.down
    remove_column :rollovers, :active_updated_at
    remove_column :rollovers, :active_file_size
    remove_column :rollovers, :active_content_type
    remove_column :rollovers, :active_file_name
    remove_column :rollovers, :inactive_updated_at
    remove_column :rollovers, :inactive_file_size
    remove_column :rollovers, :inactive_content_type
    remove_column :rollovers, :inactive_file_name
    remove_column :rollovers, :over_updated_at
    remove_column :rollovers, :over_file_size
    remove_column :rollovers, :over_content_type
    remove_column :rollovers, :over_file_name
  end
end
