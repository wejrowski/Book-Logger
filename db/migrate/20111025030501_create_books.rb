class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.column :title, :string, :null => false
      t.column :total_pages, :integer, :null => false
      t.column :current_page, :integer, :default => 0
      t.column :pages_per_night, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
