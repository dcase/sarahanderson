class AddIsHomeToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :is_home, :boolean
  end

  def self.down
    remove_column :categories, :is_home
  end
end
