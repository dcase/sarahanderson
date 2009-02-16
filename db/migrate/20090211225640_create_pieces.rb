class CreatePieces < ActiveRecord::Migration
  def self.up
    create_table :pieces do |t|
      t.string :title
      t.string :client_name
      t.integer :position
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.references :category

      t.timestamps
    end
  end

  def self.down
    drop_table :pieces
  end
end
