class CreateRollovers < ActiveRecord::Migration
  def self.up
    create_table :rollovers do |t|
      t.references :active
      t.references :inactive
      t.references :over
      t.references :category

      t.timestamps
    end
  end

  def self.down
    drop_table :rollovers
  end
end
